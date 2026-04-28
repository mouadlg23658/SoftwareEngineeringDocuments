
using System;
using System.Data.SqlClient;
using static hotelerie.inscription;

namespace hotelerie
{
    public partial class resume : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IChambre chambre = Session["chambre"] as IChambre;

                lblVille.Text = Convert.ToString(Session["VilleChoisie"]);
                lblTypeChambre.Text = Convert.ToString(Session["TypeChambre"]);

                lblDateDebut.Text = Convert.ToString(Session["DateDebut"]);
                lblDateFin.Text = Convert.ToString(Session["DateFin"]);
                lblNbNuits.Text = Convert.ToString(Session["NbNuits"]);

                if (chambre != null)
                {
                    int nbNuits = Convert.ToInt32(Session["NbNuits"]);
                    decimal totalFinal = chambre.GetPrix() * nbNuits;

                    lblDescription.Text = chambre.GetDescription();
                    lblOptions.Text = chambre.GetDescription();
                    lblPrixTotal.Text = totalFinal.ToString() + " " + Convert.ToString(Session["Devise"]);
                }

                lblRepas.Text =
                    "Petit déjeuner : " + Convert.ToString(Session["RepasPetitDejeuner"]) + "<br/>" +
                    "Déjeuner : " + Convert.ToString(Session["RepasDejeuner"]) + "<br/>" +
                    "Dîner : " + Convert.ToString(Session["RepasDiner"]);

                lblPetit.Text = Convert.ToString(Session["HeurePetitDejeuner"]);
                lblDej.Text = Convert.ToString(Session["HeureDejeuner"]);
                lblDiner.Text = Convert.ToString(Session["HeureDiner"]);
            }
        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect("choixChambre.aspx");
        }

        protected void btnConfirmer_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["IdMembre"] == null)
                {
                    Response.Redirect("login.aspx");
                    return;
                }

                IChambre chambre = Session["chambre"] as IChambre;

                if (chambre == null)
                {
                    lblErreur.Text = "Aucune chambre sélectionnée.";
                    return;
                }

                int idMembre = Convert.ToInt32(Session["IdMembre"]);
                int idChambre = Convert.ToInt32(Session["IdChambre"]);
                int nbNuits = Convert.ToInt32(Session["NbNuits"]);

                string hotel = Convert.ToString(Session["VilleChoisie"]);
                string type = Convert.ToString(Session["TypeChambre"]);
                string desc = chambre.GetDescription();
                string devise = Convert.ToString(Session["Devise"]);

                decimal totalFinal = chambre.GetPrix() * nbNuits;
                string total = totalFinal.ToString();

                using (SqlConnection con = basedonne.Instance.CreateConnection())
                {
                    string req = @"INSERT INTO Reservation
                    (IdMembre, NomClient, DateReservation, IdChambre, Hotel, TypeChambre, DescriptionReservation, Total, Devise, DateDebut, DateFin, NbNuits)
                    VALUES
                    (@idMembre, @nom, @dateReservation, @idChambre, @hotel, @type, @desc, @total, @devise, @dateDebut, @dateFin, @nbNuits)";

                    SqlCommand cmd = new SqlCommand(req, con);

                    cmd.Parameters.AddWithValue("@idMembre", idMembre);
                    cmd.Parameters.AddWithValue("@nom", Convert.ToString(Session["NomMembre"]));
                    cmd.Parameters.AddWithValue("@dateReservation", DateTime.Now);
                    cmd.Parameters.AddWithValue("@idChambre", idChambre);
                    cmd.Parameters.AddWithValue("@hotel", hotel);
                    cmd.Parameters.AddWithValue("@type", type);
                    cmd.Parameters.AddWithValue("@desc", desc);
                    cmd.Parameters.AddWithValue("@total", total);
                    cmd.Parameters.AddWithValue("@devise", devise);
                    cmd.Parameters.AddWithValue("@dateDebut", Convert.ToDateTime(Session["DateDebut"]));
                    cmd.Parameters.AddWithValue("@dateFin", Convert.ToDateTime(Session["DateFin"]));
                    cmd.Parameters.AddWithValue("@nbNuits", nbNuits);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }

                SujetReservation sujet = new SujetReservation();
                sujet.AjouterObservateur(new ObservateurClient());
                sujet.AjouterObservateur(new ObservateurHotel());

                string message = "Nouvelle réservation : " + type + " à " + hotel +
                                 " du " + Session["DateDebut"] +
                                 " au " + Session["DateFin"];

                sujet.NotifierTous(message);

                Response.Redirect("merci.aspx");
            }
            catch (Exception ex)
            {
                lblErreur.Text = "Erreur : " + ex.Message;
            }
        }
    }
}
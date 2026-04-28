using System;
using System.Data.SqlClient;
using static hotelerie.inscription;

namespace hotelerie
{
    public partial class resumeDubai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IChambre chambre = Session["chambre"] as IChambre;

                lblHotel.Text = "Luxury Hotel Dubai";
                lblDevise.Text = Convert.ToString(Session["Devise"]);

                lblDateDebut.Text = Convert.ToString(Session["DateDebut"]);
                lblDateFin.Text = Convert.ToString(Session["DateFin"]);
                lblNbNuits.Text = Convert.ToString(Session["NbNuits"]);

                if (chambre != null)
                {
                    int nbNuits = Convert.ToInt32(Session["NbNuits"]);
                    decimal totalFinal = chambre.GetPrix() * nbNuits;

                    lblDescription.Text = chambre.GetDescription();
                    lblTotal.Text = totalFinal.ToString() + " " + Convert.ToString(Session["Devise"]);
                }

                lblPetit.Text = Convert.ToString(Session["RepasPetitDejeuner"]);
                lblDej.Text = Convert.ToString(Session["RepasDejeuner"]);
                lblDiner.Text = Convert.ToString(Session["RepasDiner"]);

                lblHeurePetit.Text = Convert.ToString(Session["HeurePetitDejeuner"]);
                lblHeureDej.Text = Convert.ToString(Session["HeureDejeuner"]);
                lblHeureDiner.Text = Convert.ToString(Session["HeureDiner"]);

                lblTaxiHeure.Text = Convert.ToString(Session["TaxiHeure"]);
                lblTaxiType.Text = Convert.ToString(Session["TaxiType"]);
                lblMiniBar.Text = Convert.ToString(Session["MiniBarPref"]);
            }
        }

        protected void btnConfirmer_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["IdMembre"] == null)
                {
                    lblErreur.Text = "Veuillez vous connecter.";
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

                string hotel = "Dubai";
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

                string message = "Nouvelle réservation : " + type + " à Dubai du " +
                                 Session["DateDebut"] + " au " + Session["DateFin"];

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
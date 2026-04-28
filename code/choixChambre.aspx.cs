using System;
using System.Data;
using System.Data.SqlClient;
using static hotelerie.inscription;

namespace hotelerie
{
    public partial class choixChambre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ChargerChambres();
        }

        protected void btnRechercher_Click(object sender, EventArgs e)
        {
            if (txtDateDebut.Text == "" || txtDateFin.Text == "")
            {
                lblErreur.Text = "Veuillez choisir les deux dates.";
                return;
            }

            DateTime debut = Convert.ToDateTime(txtDateDebut.Text);
            DateTime fin = Convert.ToDateTime(txtDateFin.Text);

            if (fin <= debut)
            {
                lblErreur.Text = "La date de départ doit être après la date d’arrivée.";
                return;
            }

            Session["DateDebut"] = txtDateDebut.Text;
            Session["DateFin"] = txtDateFin.Text;
            Session["NbNuits"] = (fin - debut).Days;

            lblErreur.Text = "";
            ChargerChambres();
        }

        private void ChargerChambres()
        {
            string ville = Convert.ToString(Session["VilleChoisie"]);

            DataTable dt = new DataTable();
            dt.Columns.Add("IdChambre", typeof(int));
            dt.Columns.Add("Nom");
            dt.Columns.Add("Categorie");
            dt.Columns.Add("Prix", typeof(decimal));
            dt.Columns.Add("Devise");
            dt.Columns.Add("Description");
            dt.Columns.Add("Image");

            if (ville == "Montreal")
            {
                AjouterSiDisponible(dt, 1, "Chambre simple Montréal", "normale", 120, "CAD", "Chambre simple confortable.", "image/chambresimplemontreal.jpg");
                AjouterSiDisponible(dt, 2, "Chambre double Montréal", "normale", 180, "CAD", "Chambre double moderne.", "image/chambredoublemontreal.jpg");
                AjouterSiDisponible(dt, 3, "Chambre familiale Montréal", "normale", 250, "CAD", "Chambre familiale spacieuse.", "image/chambrefamilialemontreal.jpg");
                AjouterSiDisponible(dt, 4, "Suite exécutive Montréal", "suite", 350, "CAD", "Suite exécutive avec options incluses.", "image/suiteexecutive.jpg");
                AjouterSiDisponible(dt, 5, "Suite présidentielle Montréal", "suite", 600, "CAD", "Suite présidentielle avec options incluses.", "image/suitepresidentielle.jpg");
            }
            else if (ville == "Dubai")
            {
                AjouterSiDisponible(dt, 6, "Chambre simple Dubai", "normale", 900, "AED", "Chambre simple luxueuse.", "image/chambresimpledubai.jpg");
                AjouterSiDisponible(dt, 7, "Chambre double Dubai", "normale", 1400, "AED", "Chambre double premium.", "image/chambredoubledubai.jpg");
                AjouterSiDisponible(dt, 8, "Penthouse Dubai", "suite", 12000, "AED", "Penthouse luxe avec options incluses.", "image/penthouse.jpg");
            }
            else if (ville == "NewYork")
            {
                AjouterSiDisponible(dt, 9, "Chambre simple New York", "normale", 150, "USD", "Chambre simple avec style urbain.", "image/chambrenewyork.jpg");
                AjouterSiDisponible(dt, 10, "Chambre double New York", "normale", 220, "USD", "Chambre double confortable.", "image/chambredoublenewyork.jpg");
                AjouterSiDisponible(dt, 11, "Chambre familiale New York", "normale", 320, "USD", "Chambre familiale avec vue skyline.", "image/chambrefamilialenewyork.jpg");
                AjouterSiDisponible(dt, 12, "Suite exécutive New York", "suite", 500, "USD", "Suite exécutive avec options incluses.", "image/suiteexecutivenewyork.jpg");
                AjouterSiDisponible(dt, 13, "Suite présidentielle New York", "suite", 900, "USD", "Suite présidentielle premium.", "image/suitepresidentielle.jpg");
                AjouterSiDisponible(dt, 14, "Penthouse New York", "suite", 2000, "USD", "Penthouse luxe avec vue sur la ville.", "image/penthouse.jpg");
            }
            else if (ville == "Tanger")
            {
                AjouterSiDisponible(dt, 15, "Chambre simple Tanger", "normale", 800, "MAD", "Chambre simple style marocain.", "image/chambresimpletanger.jpg");
                AjouterSiDisponible(dt, 16, "Chambre double Tanger", "normale", 1200, "MAD", "Chambre double traditionnelle.", "image/chambredoubletanger.jpg");
                AjouterSiDisponible(dt, 17, "Chambre familiale Tanger", "normale", 1800, "MAD", "Chambre familiale spacieuse.", "image/chambrefamilialetanger.jpg");
                AjouterSiDisponible(dt, 18, "Suite exécutive Tanger", "suite", 2500, "MAD", "Suite exécutive avec options incluses.", "image/suiteexecutivetanger.jpg");
                AjouterSiDisponible(dt, 19, "Suite présidentielle Tanger", "suite", 4500, "MAD", "Suite présidentielle luxueuse.", "image/suitepresidentielle.jpg");
            }

            repChambres.DataSource = dt;
            repChambres.DataBind();
        }

        private void AjouterSiDisponible(DataTable dt, int idChambre, string nom, string categorie, decimal prix, string devise, string description, string image)
        {
            if (Session["DateDebut"] != null && Session["DateFin"] != null)
            {
                if (!EstDisponible(idChambre, Convert.ToString(Session["DateDebut"]), Convert.ToString(Session["DateFin"])))
                    return;
            }

            DataRow row = dt.NewRow();

            row["IdChambre"] = idChambre;
            row["Nom"] = nom;
            row["Categorie"] = categorie;
            row["Prix"] = prix;
            row["Devise"] = devise;
            row["Description"] = description;
            row["Image"] = image;

            dt.Rows.Add(row);
        }

        private bool EstDisponible(int idChambre, string dateDebut, string dateFin)
        {
            using (SqlConnection con = basedonne.Instance.CreateConnection())
            {
                string req = @"SELECT COUNT(*)
                               FROM Reservation
                               WHERE IdChambre = @idChambre
                               AND DateDebut < @dateFin
                               AND DateFin > @dateDebut";

                SqlCommand cmd = new SqlCommand(req, con);
                cmd.Parameters.AddWithValue("@idChambre", idChambre);
                cmd.Parameters.AddWithValue("@dateDebut", Convert.ToDateTime(dateDebut));
                cmd.Parameters.AddWithValue("@dateFin", Convert.ToDateTime(dateFin));

                con.Open();
                int nb = Convert.ToInt32(cmd.ExecuteScalar());

                return nb == 0;
            }
        }

        protected void repChambres_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "choisir")
            {
                if (Session["DateDebut"] == null || Session["DateFin"] == null)
                {
                    lblErreur.Text = "Veuillez choisir une date d’arrivée et une date de départ.";
                    return;
                }

                string[] infos = e.CommandArgument.ToString().Split('|');

                int idChambre = Convert.ToInt32(infos[0]);
                string nom = infos[1];
                decimal prix = Convert.ToDecimal(infos[2]);
                string categorie = infos[3];
                string ville = Convert.ToString(Session["VilleChoisie"]);

                Session["IdChambre"] = idChambre;
                Session["TypeChambre"] = nom;
                Session["chambre"] = new ChambreBase(prix);

                if (ville == "Dubai")
                    Session["Devise"] = "AED";
                else if (ville == "NewYork")
                    Session["Devise"] = "USD";
                else if (ville == "Tanger")
                    Session["Devise"] = "MAD";
                else if (ville == "Montreal")
                    Session["Devise"] = "CAD";

                if (categorie == "suite")
                {
                    Response.Redirect("detailsSuite.aspx");
                }
                else
                {
                    if (ville == "Dubai")
                        Response.Redirect("optionDubai.aspx");
                    else if (ville == "NewYork")
                        Response.Redirect("optionNewyork.aspx");
                    else if (ville == "Tanger")
                        Response.Redirect("optionsTanger.aspx");
                    else if (ville == "Montreal")
                        Response.Redirect("optionsMontreal.aspx");
                }
            }
        }
    }
}
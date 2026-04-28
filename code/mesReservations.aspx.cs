using System;
using System.Data;
using System.Data.SqlClient;
using static hotelerie.inscription;

namespace hotelerie
{
    public partial class mesReservations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ChargerReservations();
            }
        }

        private void ChargerReservations()
        {
            if (Session["IdMembre"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            int idMembre = Convert.ToInt32(Session["IdMembre"]);

            using (SqlConnection con = basedonne.Instance.CreateConnection())
            {
                string requete = @"SELECT Hotel, TypeChambre, Total, DateReservation
                                   FROM Reservation
                                   WHERE IdMembre = @id
                                   ORDER BY DateReservation DESC";

                SqlCommand cmd = new SqlCommand(requete, con);
                cmd.Parameters.AddWithValue("@id", idMembre);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                if (dt.Rows.Count == 0)
                {
                    gvReservations.Visible = false;
                    lblVide.Text = "Aucune réservation pour le moment.";
                }
                else
                {
                    gvReservations.Visible = true;
                    gvReservations.DataSource = dt;
                    gvReservations.DataBind();
                    lblVide.Text = "";
                }
            }
        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnNouvelle_Click(object sender, EventArgs e)
        {
            Response.Redirect("reserver.aspx");
        }
    }
}
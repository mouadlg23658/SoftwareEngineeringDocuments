using System;
using System.Data.SqlClient;

namespace hotelerie
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnconnecte_Click(object sender, EventArgs e)
        {
            string emailSaisi = txtEmail.Text.Trim();
            string motdepasseSaisi = txtMotDePasse.Text.Trim();
            SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\bakka\source\repos\hotelerie\App_Data\mabasedonne.mdf;Integrated Security=True");
            mycon.Open();
            string sql = "SELECT IdMembre, Nom, Prenom FROM Membres WHERE Email=@eml AND MotDePasse=@mdp";
            SqlCommand moncmd = new SqlCommand(sql, mycon);
            SqlParameter myPar = new SqlParameter("@eml", System.Data.SqlDbType.NVarChar);
            myPar.Value = emailSaisi;
            moncmd.Parameters.Add(myPar);
            moncmd.Parameters.AddWithValue("@mdp", motdepasseSaisi);
            SqlDataReader myrder = moncmd.ExecuteReader();
            if (myrder.Read() == false)
            {
                myrder.Close();
                mycon.Close();
                lblErreur.Text = "Email ou mot de passe incorrect";
                return;
            }
            Session["IdMembre"] = myrder["IdMembre"].ToString();
            Session["Nom"] = myrder["Nom"].ToString();
           Session["Prenom"] = myrder["Prenom"].ToString();
            myrder.Close();
            mycon.Close();
            Response.Redirect("index.aspx");
        }
    }
}
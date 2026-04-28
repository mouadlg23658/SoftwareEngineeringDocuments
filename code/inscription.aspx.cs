using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace hotelerie
{
    public partial class inscription : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        public sealed class basedonne
        {
            private static readonly basedonne _instance = new basedonne();
            private readonly string maconnection;
            private basedonne()
            {
                maconnection = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\bakka\source\repos\hotelerie\App_Data\mabasedonne.mdf;Integrated Security=True";
            }
            public static basedonne Instance
            {
                get
                {
                    return _instance;
                }
            }
            public SqlConnection CreateConnection()
            {
                return new SqlConnection(maconnection);
            }
        }
        protected void btnInscription_Click(object sender, EventArgs e)
        {
            string numSaisi = txtTelephone.Text.Trim();
            string sql;
            SqlConnection mycon = basedonne.Instance.CreateConnection();
            mycon.Open();
            sql = "SELECT Telephone FROM Membres WHERE Telephone = @tel";
            SqlCommand mycmd = new SqlCommand(sql, mycon);
            mycmd.Parameters.AddWithValue("@tel", numSaisi);
            SqlDataReader myrder = mycmd.ExecuteReader();
            if (myrder.Read() == true)
            {
                myrder.Close();
                mycon.Close();
                lblMessage.Text = "Desole, vous etes deja membre";
                return;
            }
            else
            {
                myrder.Close();
                string telephone = txtTelephone.Text.Trim();
                string nom = txtNom.Text.Trim();
                string email = txtEmail.Text.Trim();
                string prenom = txtPrenom.Text.Trim();
                string mdpSaisi = txtMotDePasse.Text.Trim();
                sql = "INSERT INTO Membres (Telephone, Nom, Prenom, Email, MotDePasse) ";
                sql += "VALUES (@tel, @nom, @prenom, @email, @mdp)";
                SqlCommand mycmd2 = new SqlCommand(sql, mycon);
                mycmd2.Parameters.AddWithValue("@tel", telephone);
                mycmd2.Parameters.AddWithValue("@nom", nom);
                mycmd2.Parameters.AddWithValue("@prenom", prenom);
                mycmd2.Parameters.AddWithValue("@email", email);
                mycmd2.Parameters.AddWithValue("@mdp", mdpSaisi);
                mycmd2.ExecuteNonQuery();
                mycon.Close();
                Response.Redirect("login.aspx");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


namespace hotelerie
{
    public class SuiteMontreal : ISuite
    {
        public string GetPays()
        {
            string pays = "";

            string connexion = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\bakka\source\repos\hotelerie\App_Data\mabasedonne.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connexion))
            {
                con.Open();

                string query = "SELECT Nom FROM Pays WHERE Nom = 'Canada'";

                SqlCommand cmd = new SqlCommand(query, con);

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    pays = result.ToString();
                }
                else
                {
                    pays = "Pays non trouvé";
                }
            }

            return pays;
        }
        public string GetOptionsIncluses()
        {
            return "Linge premium, Pet Friendly, Mini-bar, Taxi, Room Service";
        }
        public string GetPrix()
        {
            string prix = "";

            string connexion = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\bakka\source\repos\hotelerie\App_Data\mabasedonne.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connexion))
            {
                con.Open();

                string query = "SELECT Prix FROM Chambre WHERE TypeChambre = 'Suite Executive'";

                SqlCommand cmd = new SqlCommand(query, con);

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    prix = result.ToString() + "$ / nuit";
                }
                else
                {
                    prix = "Prix non disponible";
                }
            }

            return prix;
        }
        public string GetDescription()
        {
            return "Suite confortable avec services complets.";
        }
        public string GetDevise()
        {
            string devise = "";

            string connexion = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\bakka\source\repos\hotelerie\App_Data\mabasedonne.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connexion))
            {
                con.Open();

                string query = "SELECT Devise FROM Pays WHERE Nom = 'Canada'";

                SqlCommand cmd = new SqlCommand(query, con);

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    devise = result.ToString();
                }
                else
                {
                    devise = "Devise inconnue";
                }
            }

            return devise;
        }
    }
}
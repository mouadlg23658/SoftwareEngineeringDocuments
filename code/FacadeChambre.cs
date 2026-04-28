using hotelerie.hotelerie;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class FacadeChambre
    {
        public decimal GetPrixBase(string typeChambre, int idHotel)
        {
            decimal prix = 0;

            string connexion = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\bakka\source\repos\hotelerie\App_Data\mabasedonne.mdf;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connexion))
            {
                con.Open();

                string query = "SELECT Prix FROM Chambre WHERE TypeChambre = @type AND IdHotel = @hotel";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@type", typeChambre);
                cmd.Parameters.AddWithValue("@hotel", idHotel);

                object result = cmd.ExecuteScalar();

                if (result != null)
                {
                    prix = Convert.ToDecimal(result);
                }
            }

            return prix;
        }

        public ChambreInfo GetInfosChambreMontreal(
            decimal prixBase,
            bool linge,
            bool pet,
            bool miniBar,
            bool roomService,
            bool taxi)
        {
            IChambre chambre = new ChambreBase(prixBase);

            if (linge)
            {
                chambre = new DecorateurLinge(chambre);
            }

            if (pet)
            {
                chambre = new DecorateurPetFriendly(chambre);
            }

            if (miniBar)
            {
                chambre = new DecorateurMiniBar(chambre);
            }

            if (roomService)
            {
                chambre = new DecorateurRoomService(chambre);
            }

            if (taxi)
            {
                chambre = new DecorateurTaxi(chambre);
            }

            ChambreInfo info = new ChambreInfo();
            info.Description = chambre.GetDescription();
            info.Prix = chambre.GetPrix();

            return info;
        }
    }
    }
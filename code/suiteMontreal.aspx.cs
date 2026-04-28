using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hotelerie
{
    public partial class suiteMontreal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnContinuer_Click(object sender, EventArgs e)
        {
            FacadeHotel facade = new FacadeHotel();
            SuiteInfo info = facade.GetInfos("Montreal");

            string repas = "";

            if (rbPancakes.Checked)
                repas += "Pancakes, ";
            else if (rbOmelette.Checked)
                repas += "Omelette, ";

            if (rbPoutine.Checked)
                repas += "Poutine, ";
            else if (rbBurger.Checked)
                repas += "Burger, ";

            if (rbSaumon.Checked)
                repas += "Saumon";
            else if (rbSteak.Checked)
                repas += "Steak";

            Session["VilleHotel"] = info.Ville;
            Session["PaysHotel"] = info.Pays;
            Session["DeviseHotel"] = info.Devise;
            Session["DescriptionOptions"] = info.Options;
            Session["PrixTotal"] = info.Prix;
            Session["DescriptionSuite"] = info.Description;
            Session["RepasChoisis"] = repas;
            Session["TypeChambre"] = "Suite";
            Session["HeurePetit"] = ddlPetit.SelectedValue;
            Session["HeureDej"] = ddlDej.SelectedValue;
            Session["HeureDiner"] = ddlDiner.SelectedValue;
            Session["PageRetour"] = "suiteMontreal.aspx";
            Response.Redirect("resume.aspx");
        }

    }
    }

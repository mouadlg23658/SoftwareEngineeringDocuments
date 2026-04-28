using System;
namespace hotelerie
{
    public partial class optionsNewYork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContinuer_Click(object sender, EventArgs e)
        {
            IChambre chambre = Session["chambre"] as IChambre;

            if (chambre == null)
            {
                chambre = new ChambreBase(150);
            }

            if (chkLinge.Checked)
                chambre = new DecorateurLingeNewYork(chambre);

            if (chkPet.Checked)
                chambre = new DecorateurPetNewYork(chambre);

            if (chkMiniBar.Checked)
                chambre = new DecorateurMiniBarNewYork(chambre);

            if (chkRoomService.Checked)
                chambre = new DecorateurRoomServiceNewYork(chambre);

            if (chkTaxi.Checked)
                chambre = new DecorateurTaxiNewYork(chambre);

            Session["chambre"] = chambre;

            Session["VilleHotel"] = "New York";
            Session["Devise"] = "USD";

            Session["HeurePetitDejeuner"] = ddlPetit.SelectedValue;
            Session["HeureDejeuner"] = ddlDej.SelectedValue;
            Session["HeureDiner"] = ddlDiner.SelectedValue;

            Session["TaxiHeure"] = txtHeureTaxi.Text;
            Session["TaxiType"] = ddlTaxi.SelectedValue;
            Session["MiniBarPref"] = txtMiniBar.Text;

            Session["RepasPetitDejeuner"] = "";
            Session["RepasDejeuner"] = "";
            Session["RepasDiner"] = "";

            if (chkBagel.Checked)
                Session["RepasPetitDejeuner"] += "Bagel ";

            if (chkPancakes.Checked)
                Session["RepasPetitDejeuner"] += "Pancakes ";

            if (chkPizza.Checked)
                Session["RepasDejeuner"] += "Pizza ";

            if (chkHotDog.Checked)
                Session["RepasDejeuner"] += "Hot-dog ";

            if (chkSteak.Checked)
                Session["RepasDiner"] += "Steak ";

            if (chkPates.Checked)
                Session["RepasDiner"] += "Pâtes ";

            Response.Redirect("ResumeNewYork.aspx");
        }
    }
}
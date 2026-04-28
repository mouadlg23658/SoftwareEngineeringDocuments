using System;
using hotelerie;

namespace hotelerie
{
    public partial class optionsDubai : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContinuer_Click(object sender, EventArgs e)
        {
            IChambre chambre = Session["chambre"] as IChambre;

            if (chambre == null)
            {
                chambre = new ChambreBase(900);
            }

            if (chkLinge.Checked)
                chambre = new DecorateurLingeDubai(chambre);

            if (chkPet.Checked)
                chambre = new DecorateurPetDubai(chambre);

            if (chkMiniBar.Checked)
                chambre = new DecorateurMiniBarDubai(chambre);

            if (chkRoomService.Checked)
                chambre = new DecorateurRoomServiceDubai(chambre);

            if (chkTaxi.Checked)
                chambre = new DecorateurTaxiDubai(chambre);

            Session["chambre"] = chambre;

            Session["VilleHotel"] = "Dubai";
            Session["Devise"] = "AED";

            Session["HeurePetitDejeuner"] = ddlPetit.SelectedValue;
            Session["HeureDejeuner"] = ddlDej.SelectedValue;
            Session["HeureDiner"] = ddlDiner.SelectedValue;

            Session["TaxiHeure"] = txtHeureTaxi.Text;
            Session["TaxiType"] = ddlTaxi.SelectedValue;
            Session["MiniBarPref"] = txtMiniBar.Text;

            Session["RepasPetitDejeuner"] = "";
            Session["RepasDejeuner"] = "";
            Session["RepasDiner"] = "";

            if (chkShakshouka.Checked)
                Session["RepasPetitDejeuner"] += "Shakshouka ";

            if (chkPainArabe.Checked)
                Session["RepasPetitDejeuner"] += "Pain arabe ";

            if (chkShawarma.Checked)
                Session["RepasDejeuner"] += "Shawarma ";

            if (chkKabsa.Checked)
                Session["RepasDejeuner"] += "Kabsa ";

            if (chkAgneau.Checked)
                Session["RepasDiner"] += "Agneau ";

            if (chkPoisson.Checked)
                Session["RepasDiner"] += "Poisson épicé ";

            Response.Redirect("ResumeDubai.aspx");
        }
    }
}
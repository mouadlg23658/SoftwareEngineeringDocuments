using System;
namespace hotelerie
{
    public partial class optionsTanger : System.Web.UI.Page
    {
        protected void btnContinuer_Click(object sender, EventArgs e)
        {
            IChambre chambre = Session["chambre"] as IChambre;

            if (chambre == null)
                chambre = new ChambreBase(800);

            if (chkLinge.Checked)
                chambre = new DecorateurLingeTanger(chambre);

            if (chkPet.Checked)
                chambre = new DecorateurPetTanger(chambre);

            if (chkMiniBar.Checked)
                chambre = new DecorateurMiniBarTanger(chambre);

            if (chkRoomService.Checked)
                chambre = new DecorateurRoomServiceTanger(chambre);

            if (chkTaxi.Checked)
                chambre = new DecorateurTaxiTanger(chambre);

            Session["chambre"] = chambre;

            Session["VilleHotel"] = "Tanger";
            Session["Devise"] = "MAD";

            Response.Redirect("resumeTanger.aspx");
        }
    }
}
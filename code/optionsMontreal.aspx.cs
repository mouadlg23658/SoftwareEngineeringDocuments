using System;
using System.Web.UI;

namespace hotelerie
{
    public partial class optionsMontreal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContinuer_Click(object sender, EventArgs e)
        {

            decimal prixBase = 120;

            if (Session["PrixBase"] != null)
            {
                prixBase = Convert.ToDecimal(Session["PrixBase"]);
            }

            IChambre chambre = new ChambreBase(prixBase);

            if (chkLinge.Checked)
            {
                chambre = new DecorateurLinge(chambre);
            }

            if (chkPet.Checked)
            {
                chambre = new DecorateurPetFriendly(chambre);
            }

            if (chkMiniBar.Checked)
            {
                chambre = new DecorateurMiniBar(chambre);
            }

            if (chkRoomService.Checked)
            {
                chambre = new DecorateurRoomService(chambre);
            }

            if (chkTaxi.Checked)
            {
                chambre = new DecorateurTaxi(chambre);
            }

            Session["DescriptionOptions"] = chambre.GetDescription();
            Session["PrixTotal"] = chambre.GetPrix();

            Session["HeurePetit"] = ddlPetit.SelectedValue;
            Session["HeureDej"] = ddlDej.SelectedValue;
            Session["HeureDiner"] = ddlDiner.SelectedValue;
            Session["TypeChambre"] = "Chambre normale";
            Session["PageRetour"] = "optionsMontreal.aspx";
            Response.Redirect("resume.aspx");
        }
    }
}
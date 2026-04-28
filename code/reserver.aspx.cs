using System;

namespace hotelerie
{
    public partial class reserver : System.Web.UI.Page
    {
        protected void btnMontreal_Click(object sender, EventArgs e)
        {
            Session["VilleChoisie"] = "Montreal";
            Response.Redirect("choixChambre.aspx");
        }

        protected void btnDubai_Click(object sender, EventArgs e)
        {
            Session["VilleChoisie"] = "Dubai";
            Response.Redirect("choixChambre.aspx");
        }

        protected void btnNewYork_Click(object sender, EventArgs e)
        {
            Session["VilleChoisie"] = "NewYork";
            Response.Redirect("choixChambre.aspx");
        }

        protected void btnTanger_Click(object sender, EventArgs e)
        {
            Session["VilleChoisie"] = "Tanger";
            Response.Redirect("choixChambre.aspx");
        }
    }
}
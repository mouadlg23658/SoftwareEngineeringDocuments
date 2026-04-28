using System;

namespace hotelerie
{
    public partial class index : System.Web.UI.Page
    {
        protected void btnReserver_Click(object sender, EventArgs e)
        {
            Response.Redirect("reserver.aspx");
        }

        protected void btnMesReservations_Click(object sender, EventArgs e)
        {
            Response.Redirect("mesReservations.aspx");
        }
    }
}
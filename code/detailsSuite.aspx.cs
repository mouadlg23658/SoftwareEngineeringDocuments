using System;

namespace hotelerie
{
    public partial class detailsSuite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ChargerMenus();
            }
        }

        private void ChargerMenus()
        {
            string ville = Convert.ToString(Session["VilleChoisie"]);

            ddlPetitDejeuner.Items.Clear();
            ddlDejeuner.Items.Clear();
            ddlDiner.Items.Clear();

            if (ville == "Dubai")
            {
                ddlPetitDejeuner.Items.Add("Shakshouka");
                ddlPetitDejeuner.Items.Add("Pain arabe");

                ddlDejeuner.Items.Add("Shawarma");
                ddlDejeuner.Items.Add("Kabsa");

                ddlDiner.Items.Add("Agneau");
                ddlDiner.Items.Add("Poisson épicé");
            }
            else if (ville == "NewYork")
            {
                ddlPetitDejeuner.Items.Add("Bagel");
                ddlPetitDejeuner.Items.Add("Pancakes");

                ddlDejeuner.Items.Add("Pizza");
                ddlDejeuner.Items.Add("Hot-dog");

                ddlDiner.Items.Add("Steak");
                ddlDiner.Items.Add("Pâtes");
            }
            else if (ville == "Tanger")
            {
                ddlPetitDejeuner.Items.Add("Msemen");
                ddlPetitDejeuner.Items.Add("Harcha");

                ddlDejeuner.Items.Add("Tajine");
                ddlDejeuner.Items.Add("Couscous");

                ddlDiner.Items.Add("Pastilla");
                ddlDiner.Items.Add("Grillades");
            }
            else if (ville == "Montreal")
            {
                ddlPetitDejeuner.Items.Add("Pancakes");
                ddlPetitDejeuner.Items.Add("Omelette");

                ddlDejeuner.Items.Add("Poutine");
                ddlDejeuner.Items.Add("Burger");

                ddlDiner.Items.Add("Saumon");
                ddlDiner.Items.Add("Steak");
            }
        }

        protected void btnContinuer_Click(object sender, EventArgs e)
        {
            string ville = Convert.ToString(Session["VilleChoisie"]);

            Session["RepasPetitDejeuner"] = ddlPetitDejeuner.SelectedValue;
            Session["RepasDejeuner"] = ddlDejeuner.SelectedValue;
            Session["RepasDiner"] = ddlDiner.SelectedValue;

            Session["HeurePetitDejeuner"] = ddlHeurePetit.SelectedValue;
            Session["HeureDejeuner"] = ddlHeureDej.SelectedValue;
            Session["HeureDiner"] = ddlHeureDiner.SelectedValue;

            Session["TaxiHeure"] = txtHeureTaxi.Text;
            Session["TaxiType"] = ddlTaxi.SelectedValue;
            Session["MiniBarPref"] = txtMiniBar.Text;

            Session["RaceAnimal"] = txtRace.Text;
            Session["DimensionsAnimal"] = txtDimensions.Text;
            Session["PasseportAnimal"] = txtPasseport.Text;

            if (ville == "Dubai")
                Response.Redirect("resumeDubai.aspx");
            else if (ville == "NewYork")
                Response.Redirect("resumeNewYork.aspx");
            else if (ville == "Tanger")
                Response.Redirect("resumeTanger.aspx");
            else if (ville == "Montreal")
                Response.Redirect("resume.aspx");
        }
    }
}
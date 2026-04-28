
namespace hotelerie
{
    public class DecorateurMiniBarNewYork : DecorateurChambre
    {
        public DecorateurMiniBarNewYork(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Mini-bar New York";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 25;
        }
    }
}
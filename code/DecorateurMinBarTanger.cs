
namespace hotelerie
{
    public class DecorateurMiniBarTanger : DecorateurChambre
    {
        public DecorateurMiniBarTanger(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Mini-bar Tanger sans alcool";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 120;
        }
    }
}
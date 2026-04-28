

namespace hotelerie
{
    public class DecorateurMiniBar : DecorateurChambre
    {
        public DecorateurMiniBar(IChambre chambre) : base(chambre)
        {
        }
        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Mini-bar";
        }
        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 30;
        }
    }
}


namespace hotelerie
{
    public class DecorateurMiniBarDubai : DecorateurChambre
    {
        public DecorateurMiniBarDubai(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Mini-bar Dubai";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 150;
        }
    }
}
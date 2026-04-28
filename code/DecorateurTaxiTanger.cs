

namespace hotelerie
{
    public class DecorateurTaxiTanger : DecorateurChambre
    {
        public DecorateurTaxiTanger(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Taxi Tanger";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 150;
        }
    }
}
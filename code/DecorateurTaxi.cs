

namespace hotelerie
{
    public class DecorateurTaxi : DecorateurChambre
    {
        public DecorateurTaxi(IChambre chambre) : base(chambre)
        {
        }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Taxi";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 40;
        }
    }
}
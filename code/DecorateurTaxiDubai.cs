
namespace hotelerie
{
    public class DecorateurTaxiDubai : DecorateurChambre
    {
        public DecorateurTaxiDubai(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Taxi privé Dubai";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 200;
        }
    }
}
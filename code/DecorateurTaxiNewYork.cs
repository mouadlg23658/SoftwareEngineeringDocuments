
namespace hotelerie
{
    public class DecorateurTaxiNewYork : DecorateurChambre
    {
        public DecorateurTaxiNewYork(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Taxi New York";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 50;
        }
    }
}
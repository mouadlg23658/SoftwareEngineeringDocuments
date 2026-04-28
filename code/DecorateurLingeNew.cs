
namespace hotelerie
{
    public class DecorateurLingeNewYork : DecorateurChambre
    {
        public DecorateurLingeNewYork(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Linge premium New York";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 10;
        }
    }
}
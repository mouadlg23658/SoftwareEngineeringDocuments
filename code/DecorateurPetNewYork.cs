

namespace hotelerie
{
    public class DecorateurPetNewYork : DecorateurChambre
    {
        public DecorateurPetNewYork(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Pet Friendly New York";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 20;
        }
    }
}
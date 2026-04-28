
namespace hotelerie
{
    public class DecorateurPetDubai : DecorateurChambre
    {
        public DecorateurPetDubai(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Pet Friendly Dubai";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 100;
        }
    }
}
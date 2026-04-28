
namespace hotelerie
{
    public class DecorateurPetTanger : DecorateurChambre
    {
        public DecorateurPetTanger(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Pet Friendly Tanger";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 150;
        }
    }
}
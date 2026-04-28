


namespace hotelerie
{
    public class DecorateurLingeTanger : DecorateurChambre
    {
        public DecorateurLingeTanger(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Linge premium Tanger";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 100;
        }
    }
}
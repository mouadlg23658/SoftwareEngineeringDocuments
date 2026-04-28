
namespace hotelerie
{
    public class DecorateurRoomServiceTanger : DecorateurChambre
    {
        public DecorateurRoomServiceTanger(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Room Service Tanger";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 100;
        }
    }
}


namespace hotelerie
{
    public class DecorateurRoomService : DecorateurChambre
    {
        public DecorateurRoomService(IChambre chambre) : base(chambre)
        {
        }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Room Service";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 20;
        }
    }
}
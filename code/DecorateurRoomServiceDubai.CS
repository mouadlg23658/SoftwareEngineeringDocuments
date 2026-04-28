

namespace hotelerie
{
    public class DecorateurRoomServiceDubai : DecorateurChambre
    {
        public DecorateurRoomServiceDubai(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Room Service Dubai";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 120;
        }
    }
}
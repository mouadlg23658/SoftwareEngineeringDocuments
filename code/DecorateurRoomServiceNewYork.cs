
namespace hotelerie
{
    public class DecorateurRoomServiceNewYork : DecorateurChambre
    {
        public DecorateurRoomServiceNewYork(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Room Service New York";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 18;
        }
    }
}
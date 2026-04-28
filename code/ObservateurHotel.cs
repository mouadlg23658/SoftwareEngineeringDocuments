using System.IO;
using System.Web;

namespace hotelerie
{
    public class ObservateurHotel : IObservateurReservation
    {
        public void Notifier(string message)
        {
            string chemin = HttpContext.Current.Server.MapPath("~/notifications_hotel.txt");
            File.AppendAllText(chemin, "HOTEL : " + message + "\n");
        }
    }
}
using System.IO;
using System.Web;
namespace hotelerie
{
    public class ObservateurClient : IObservateurReservation
    {
        public void Notifier(string message)
        {
            string chemin = HttpContext.Current.Server.MapPath("~/notifications_client.txt");
            File.AppendAllText(chemin, "CLIENT : " + message + "\n");
        }
    }
}
using System.Collections.Generic;

namespace hotelerie
{
    public class SujetReservation
    {
        private List<IObservateurReservation> observateurs = new List<IObservateurReservation>();

        public void AjouterObservateur(IObservateurReservation observateur)
        {
            observateurs.Add(observateur);
        }

        public void NotifierTous(string message)
        {
            foreach (IObservateurReservation observateur in observateurs)
            {
                observateur.Notifier(message);
            }
        }
    }
}
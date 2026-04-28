using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class ChambreBase : IChambre
    {
        private decimal prixBase;
        public ChambreBase(decimal prixBase)
        {
            this.prixBase = prixBase;
        }
        public string GetDescription()
        {
            return "Chambre de base";
        }
        public decimal GetPrix()
        {
            return prixBase;
        }
    }
}
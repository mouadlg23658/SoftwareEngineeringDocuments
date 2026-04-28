using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public abstract class DecorateurChambre : IChambre
    {
        protected IChambre chambre;

        public DecorateurChambre(IChambre chambre)
        {
            this.chambre = chambre;
        }
        public abstract string GetDescription();
        public abstract decimal GetPrix();
    }
}
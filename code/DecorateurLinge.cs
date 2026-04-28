using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class DecorateurLinge : DecorateurChambre
    {
        public DecorateurLinge(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Linge premium";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 15;
        }
    }
}
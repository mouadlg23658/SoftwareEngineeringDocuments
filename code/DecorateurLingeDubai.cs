using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class DecorateurLingeDubai : DecorateurChambre
    {
        public DecorateurLingeDubai(IChambre chambre) : base(chambre) { }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Linge premium Dubai";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 40;
        }
    }
}
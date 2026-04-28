using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class DecorateurPetFriendly : DecorateurChambre
    {
        public DecorateurPetFriendly(IChambre chambre) : base(chambre)
        {
        }

        public override string GetDescription()
        {
            return chambre.GetDescription() + ", Pet Friendly";
        }

        public override decimal GetPrix()
        {
            return chambre.GetPrix() + 25;
        }
    }
}
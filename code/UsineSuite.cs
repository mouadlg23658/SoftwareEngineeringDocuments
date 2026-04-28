using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class UsineSuite
    {
        public static ISuite CreerSuite(string ville)
        {
            switch (ville)
            {
                case "Montreal":
                    return new SuiteMontreal();
                default:
                    return null;
            }
        }
    }
}
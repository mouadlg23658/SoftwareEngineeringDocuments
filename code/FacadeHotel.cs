using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace hotelerie
{
    public class FacadeHotel
    {
        public SuiteInfo GetInfos(string ville)
        {
            ISuite suite = UsineSuite.CreerSuite(ville);
            SuiteInfo info = new SuiteInfo();
            info.Ville = suite.GetPays();
            info.Prix = suite.GetPrix();
            info.Pays = suite.GetPays();
            info.Options = suite.GetOptionsIncluses();
            info.Description = suite.GetDescription();

            return info;
        }
    }
}
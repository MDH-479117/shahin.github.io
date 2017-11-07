using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using System.Configuration;
namespace ShoppingCart.BL
{
    static class ConnectionString
    {
        public static string GetConnectionString()
        {
            return System.Configuration.ConfigurationSettings.AppSettings["CONSTR"];
        }
    }
}

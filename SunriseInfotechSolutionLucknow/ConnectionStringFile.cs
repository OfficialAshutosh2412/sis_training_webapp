using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace SunriseInfotechSolutionLucknow
{
    public class ConnectionStringFile
    {
        public static SqlConnection GetConnection()
        {
            SqlConnection cn = new SqlConnection(
                ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()
            );
            return cn;
        }
    }
}
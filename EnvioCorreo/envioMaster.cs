using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Ejercicios.EnvioCorreo
{
    public class envioMaster
    {
        private void evIngresar(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
            SqlCommand cmd = new SqlCommand("spLoguin", cnn);


        }
    }
}
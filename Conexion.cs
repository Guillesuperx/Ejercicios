using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Ejercicios
{
    public class Conexion
    {

        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
       
        public void conectar()
        {
            try
            {

                cnn.Open();

            }
            catch (Exception e)
            {
                throw new Exception("Error al conectar ", e);
            }
        }

        public void desconectar()
        {
            try
            {

                cnn.Close();

            }
            catch (Exception e)
            {
                throw new Exception("Error al desconectar ", e);
            }
        }

       
        }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Registrarse : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
        Conexion con = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void AddButton(Object sender, EventArgs e)
        {

            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
               


            SqlCommand cmd = new SqlCommand("spi_registrar", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("nombre", nombre.Value);
            cmd.Parameters.AddWithValue("email", email.Value);
            cmd.Parameters.AddWithValue("fecnac", fecnac.Value);
            cmd.Parameters.AddWithValue("usuario", user.Value);
            cmd.Parameters.AddWithValue("pass", contra.Value);
            cnn.Open();

            try
            {

                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                   
                    var stopwatch = Stopwatch.StartNew();
                    Thread.Sleep(5000); //tiempo de pausa
                    stopwatch.Stop();
                    Response.Redirect("Login.aspx");
                }
                cnn.Close();
                

            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
            finally
            {
                cnn.Close();
                nombre.Value = "";
                email.Value = "";
                fecnac.Value = "";
                user.Value = "";
                contra.Value = "";
               
            }

        }
    }
}
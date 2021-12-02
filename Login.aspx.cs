using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
        Conexion con = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void AddButton(Object sender, EventArgs e)
        {

            cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());


            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter sqlDA;
            try
            {
                con = new Conexion();

                con.conectar();

                cmd.CommandText = "select * from dbo.AcDato where usuario =  '" + user.Value + "' and pass = '" + pass.Value + "'";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = cnn;
                sqlDA = new SqlDataAdapter(cmd);
                sqlDA.Fill(dt);
                con.desconectar();
                if (dt.Rows.Count >= 1)
                {
                    Response.Redirect("WebForm1.aspx");
                }
                else
                {
                    string script = "<script type=text/javascript>IngresoError();</script>";
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "IngresoError", script, false);
                }

            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
            finally
            {
               
                user.Value = "";
                pass.Value = "";
               
            }

        }

    }
}
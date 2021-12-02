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
    public partial class ConfirmarContra : System.Web.UI.Page
    {
        string email = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {



        }

        public void AddButton_Click(Object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());


            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter sqlDA;
            try
            {


                con.Open();

                cmd.CommandText = "select email from dbo.Token where clave =  '" + usuario.Value + "' and estado = '1'";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                sqlDA = new SqlDataAdapter(cmd);
                sqlDA.Fill(dt);
                con.Close();

                if (dt.Rows.Count >= 1)
                {
                    DataRow row = dt.Rows[0];
                    email = Convert.ToString(row["email"]);
                    Div1.Visible = true;

                }
                else
                {
                    //token no valido
                }

            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
            finally
            {




            }

        }

        public void AddContra(Object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());


            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter sqlDA;
            try
            {


                con.Open();

                cmd.CommandText = "select email from dbo.Token where clave =  '" + usuario.Value + "' and estado = '1'";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                sqlDA = new SqlDataAdapter(cmd);
                sqlDA.Fill(dt);
                con.Close();

                if (dt.Rows.Count >= 1)
                {
                    DataRow row = dt.Rows[0];
                    email = Convert.ToString(row["email"]);
                    Div1.Visible = true;

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
                    SqlCommand cmda = new SqlCommand("spNuevo", conn);
                    DataTable dta = new DataTable();
                    SqlDataAdapter sqlDAa;
                    cmda.CommandType = CommandType.StoredProcedure;
                    cmda.Parameters.AddWithValue("email", email);
                    cmda.Parameters.AddWithValue("pass", Text1.Value);
                    sqlDAa = new SqlDataAdapter(cmda);
                    sqlDAa.Fill(dta);


                    try
                    {
                        conn.Open();
                        int k = cmda.ExecuteNonQuery();
                        
                        conn.Close();
                        if (k != 0)
                        {
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {

                        }

                    }
                    catch (SqlException f)
                    {
                        Console.WriteLine("Error Generated. Details: " + f.ToString());
                    }


                }
            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
        }
    }
}
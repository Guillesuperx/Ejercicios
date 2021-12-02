using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;



namespace Ejercicios
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
        Conexion con = new Conexion();
        protected void Page_Load(object sender, EventArgs e)
        {
            //nombres.Items.Clear();
            SqlCommand cmd = new SqlCommand();
            DataTable dt = new DataTable();
            SqlDataAdapter sqlDA;
            con = new Conexion();
            
            //con.conectar();

            //cmd.CommandText = "select concat(idLista,' | ',nombre) as 'nom_prom' from dbo.lista;";
            //cmd.CommandType = CommandType.Text;
            //cmd.Connection = cnn;
            //sqlDA = new SqlDataAdapter(cmd);
            //sqlDA.Fill(dt);
            //con.desconectar();

            //ListItem i;
            //ListItem j;
            //foreach(DataRow r in dt.Rows)
            //{
            //   i = new ListItem(r["nom_prom"].ToString());
            //   nombres.Items.Add(i);
            
                
            //}

           
            con.conectar();
            cmd.CommandText = " select dpi, nombre, apellido, cantidadhijos, salarioBase,salarioTotal, salarioLiquido  from dbo.lista,dbo.salarios where lista.id = salarios.idlista and lista.estado = '1' order by idLista asc;";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = cnn;
            sqlDA = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sqlDA.Fill(dt);
            con.desconectar();

            GridNombre.DataSource = dt;
            GridNombre.DataBind();


        }

        public void AddButton_Click(Object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
            SqlCommand cmd = new SqlCommand("SPCALC", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("dpi", dpi.Text);
            cmd.Parameters.AddWithValue("nombre", nombre.Text);
            cmd.Parameters.AddWithValue("apellido", apellido.Text);
            cmd.Parameters.AddWithValue("hijos", canthijos.Text);
            cmd.Parameters.AddWithValue("salarioBase",salario.Text);
            con.Open();
            try
            {

                
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
            finally
            {
                cnn.Close();
                dpi.Text = "";
                nombre.Text = "";
                apellido.Text = "";
                canthijos.Text = "";
                salario.Text = "";
                
                string currentPage = this.Page.Request.AppRelativeCurrentExecutionFilePath;
                Response.Redirect(currentPage);
            }


        }

        public void AddButton_Eliminar(Object sender, EventArgs e)
        {
            SqlConnection conne = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
            SqlCommand cmde = new SqlCommand();
            cmde.CommandText = "update lista set estado = 0 where dpi = '" + dpi.Text + "'";
            cmde.CommandType = CommandType.Text;
            cmde.Connection = conne;
            conne.Open();
            try
            {

                cmde.ExecuteNonQuery();
                conne.Close();
            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
            finally
            {
               
                dpi.Text = "";
                nombre.Text = "";
                apellido.Text = "";
                canthijos.Text = "";
                salario.Text = "";

                string currentPage = this.Page.Request.AppRelativeCurrentExecutionFilePath;
                Response.Redirect(currentPage);
            }


        }

        public void AddButton_Actualizar(Object sender, EventArgs e)
        {
            SqlConnection connu = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
            SqlCommand cmdi = new SqlCommand();
            cmdi.CommandText = "update lista set dpi = '" + dpi.Text + "', nombre = '" + nombre.Text + "', apellido = '" + apellido.Text + "', cantidadhijos = '" + canthijos.Text + "' where dpi = '" + dpi.Text + "'";
            cmdi.CommandType = CommandType.Text;
            cmdi.Connection = connu;
            connu.Open();
            try
            {

                cmdi.ExecuteNonQuery();
                connu.Close();
            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
            finally
            {
                cnn.Close();
                dpi.Text = "";
                nombre.Text = "";
                apellido.Text = "";
                canthijos.Text = "";
                salario.Text = "";

                string currentPage = this.Page.Request.AppRelativeCurrentExecutionFilePath;
                Response.Redirect(currentPage);
            }


        }

        public void AddButton_Palin(Object sender, EventArgs e)
        {
            Response.Redirect("Palindromo.aspx");
        }




    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Recucon : System.Web.UI.Page
    {
       
      
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public void AddButton_Click(Object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
            SqlCommand cmd = new SqlCommand("loguin", cnn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("email", usuario.Value);
            try
            {
                cnn.Open();
                SqlDataReader lector = cmd.ExecuteReader();
                if(lector.Read())
                {
                    GenerarContra(usuario.Value);
                }
                else
                {
                    //Mensaje de error
                }
               
            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }


        }

        public void GenerarContra(string email)
        {
            Random rd = new Random(DateTime.Now.Millisecond);
            int nuevaContra = rd.Next(100000, 999999);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["BDLocal"].ToString());
            SqlCommand cmd = new SqlCommand("spToken", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("email", usuario.Value);
            cmd.Parameters.AddWithValue("pass", nuevaContra.ToString());
            try
            {
                con.Open();
                int filasAfectadas = cmd.ExecuteNonQuery();
                if(filasAfectadas != 0)
                {
                    EnviarCorreo(nuevaContra, usuario.Value);
                }
                
            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }

        }

        public void EnviarCorreo(int nuevaContra, string correo)
        {
            string contraseña = "contraseña";
            string mensaje = string.Empty;
            string destinatario = correo;
            string remitente = "guillermo_quezada@outlook.com";
            string asunto = "Nueva Contraseña Japon";
            string cuerposms = "Su Token es " + "" + Convert.ToString(nuevaContra);
            MailMessage ms = new MailMessage(remitente, destinatario, asunto, cuerposms);

            SmtpClient smtp = new SmtpClient("smtp-mail.outlook.com", 587);
            smtp.EnableSsl = true;
            smtp.Credentials = new NetworkCredential("correoemitente@outlook.com", "contraseña");

            try
            {
                Task.Run(() =>
                {
                    smtp.Send(ms);
                    ms.Dispose();
                    //Mensaje de Correo enviado
                   

                }
                );
                Response.Redirect("ConfirmarContra.aspx");
            }
            catch (SqlException f)
            {
                Console.WriteLine("Error Generated. Details: " + f.ToString());
            }
           
               
            
        }

       
    }
    }

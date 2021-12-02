using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ejercicios
{
    public partial class Palindromo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void AddButton_Click(Object sender, EventArgs e)
        {
            string palabra, inverso, caracter;
            int i;

            palabra = Convert.ToString(dpi.Text);
            i = palabra.Length;
            inverso = "";
            for(int x=i-1; x>=0; x--)
            {
                caracter = palabra.Substring(x, 1);
                inverso = inverso + caracter;

            }
            if(palabra == inverso)
            {
                nombre.Text = "La palabra " + dpi.Text + " Es palindromo"; 
            }
            else
            {
                nombre.Text = "La palabra " + dpi.Text + " Es no es palindromo";
            }
        }
    }
}
using ProductsStore.Back.Fachada;
using ProductStore.Web.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductStore.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DivAlerta.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtuser.Text == "")
            {
                DivAlerta.Visible = true;
                lblAlerta.Text = "El campo Usuario es Obligatorio";
            }else if (txtPass.Text == "")
            {
                DivAlerta.Visible = true;
                lblAlerta.Text = "El campo Contraseña es Obligatorio";
            }
            else
            {
                string respuesta = new Fachada().ValidarUsuario(txtuser.Text, txtPass.Text);

                if(respuesta=="Acceso Denegado")
                {
                    DivAlerta.Visible = true;
                    lblAlerta.Text = respuesta;
                }
                else
                {
                    SessionManager.usuario = new Fachada().ConsultarUsuario(txtuser.Text, txtPass.Text);
                    Response.Redirect("Forms/Index");
                }
            }
        }
    }
}
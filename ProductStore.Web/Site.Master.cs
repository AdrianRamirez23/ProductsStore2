using ProductStore.Web.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductStore.Web
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = SessionManager.usuario.Name;
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            SessionManager.usuario = null;
            Response.Redirect("~/Login.aspx");
        }
    }
}
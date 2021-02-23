using ProductsStore.Back.Fachada;
using ProductsStore.Back.Maestros;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductStore.Web.Forms
{
    public partial class ListForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            alertVal.Visible = false;
            alertsucc.Visible = false;
            if (new Utils.Utils().sesionCerrada()) return;
            ListaProductos();
        }

        protected void grdListProd_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if(ddlCategoria.SelectedItem.Text=="Seleccione una Categoria")
            {
                grdListProd.PageIndex = e.NewPageIndex;
                ListaProductos();
            }
            else
            {
                grdListProd.PageIndex = e.NewPageIndex;
                FiltroProductos(ddlCategoria.SelectedItem.Text);
            }
        }
        protected void ListaProductos()
        {
                grdListProd.DataSource = new Fachada().ListarProducto();
                grdListProd.DataBind();
        }

        protected void FiltroProductos(string Categoria)
        {
            List<Productos> prodFil = new List<Productos>();
            prodFil = new Fachada().FiltrarProducto(Categoria);

            if (prodFil.Count == 0)
            {
                alertVal.Visible = true;
                lblAlerta.Text = "No hay productos con la categoria seleccionada.";
                grdListProd.DataSource = prodFil;
                grdListProd.DataBind();
            }
            else
            {
                grdListProd.DataSource = new Fachada().FiltrarProducto(Categoria);
                grdListProd.DataBind();
            }
           
        }
        protected void btnchat_Click(object sender, EventArgs e)
        {
            if(ddlCategoria.SelectedItem.Text=="Seleccione una Categoria")
            {
                alertVal.Visible = true;
                lblAlerta.Text = "Para filtrar la lista debe seleccionar una categoría";
            }
            else
            {
                alertsucc.Visible = true;
                lblsucc.Text = "Lista de Productos filtrada por la categoría: " + ddlCategoria.SelectedItem.Text;
                FiltroProductos(ddlCategoria.SelectedItem.Text);
            }
        }
    }
}
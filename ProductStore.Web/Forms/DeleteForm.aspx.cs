using ProductsStore.Back.Fachada;
using ProductsStore.Back.Maestros;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductStore.Web.Forms
{
    public partial class DeleteForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (new Utils.Utils().sesionCerrada()) return;
            alertsucc.Visible = false;
            alertVal.Visible = false;
            lbtnEliminarProducto.Visible = false;
            txtCodProd.Enabled = false;
            txtNombre.Enabled = false;
            txtDescr.Enabled = false;
            txtCategoria.Enabled = false;
            txtDispo.Enabled = false;
            txtPrecio.Enabled = false;

            div_eli.Visible = false;
            txtCod2.Enabled = false;
            txtNombre2.Enabled = false;

          

            ListaProductos();
        }

        protected void ListaProductos()
        {
            grdListProd.DataSource = new Fachada().ListarProducto();
            grdListProd.DataBind();
        }

        protected void btnchat_Click(object sender, EventArgs e)
        {
            if (txtBuscar.Text == "")
            {
                alertVal.Visible = true;
                lblAlerta.Text = "Por favor ingrese un nombre, código o descripción del producto para editar";
            }
            else
            {
                Productos prod = new Productos();
                prod = new Fachada().BuscarProducto(txtBuscar.Text.Trim());

                if (prod.NombreProducto == null)
                {
                    alertVal.Visible = true;
                    lblAlerta.Text = "El producto no ha sido encontrado o no existe.";
                }
                else
                {
                    txtCodProd.Text = prod.CodigoProducto.ToString();
                    txtNombre.Text = prod.NombreProducto.ToString();
                    txtDescr.Text = prod.DescripcionProducto.ToString();
                    txtCategoria.Text = prod.CategoriaProducto.ToString();
                    txtDispo.Text = prod.DisponiblidadProducto.ToString();
                    txtPrecio.Text = prod.PrecioProducto.ToString();
                    ImagenCargada.ImageUrl = prod.ImagenProducto;

                    lbtnEliminarProducto.Visible = true;
                }
            }
        }

        protected void lbtnElim_Click(object sender, EventArgs e)
        {

            string respuesta = new Fachada().EliminarProducto(Convert.ToInt32(txtCodProd.Text));

            if (respuesta == "Producto eliminado con éxito!")
            {
                alertsucc.Visible = true;
                lblsucc.Text = respuesta;
                txtNombre.Text = string.Empty;
                txtDescr.Text = string.Empty;
                txtPrecio.Text = string.Empty;
                txtCategoria.Text = string.Empty;
                txtDispo.Text = string.Empty;
                ImagenCargada.ImageUrl = "";
                txtCodProd.Text = string.Empty;
                txtBuscar.Text = string.Empty;
            }
            else
            {
                alertVal.Visible = true;
                lblAlerta.Text = respuesta;
                txtNombre.Text = string.Empty;
                txtDescr.Text = string.Empty;
                txtPrecio.Text = string.Empty;
                txtCategoria.Text = string.Empty;
                txtDispo.Text = string.Empty;
                ImagenCargada.ImageUrl = "";
                txtCodProd.Text = string.Empty;
                txtBuscar.Text = string.Empty;
            }
        }

        protected void lblDelete_Click(object sender, EventArgs e)
        {
            using (GridViewRow fila = (GridViewRow)((LinkButton)sender).Parent.Parent)
            {
                string CodProducto = (fila.FindControl("lblcodProd") as Label).Text;
                string NombreProducto = (fila.FindControl("lblNmProd") as Label).Text;

                txtCod2.Text = CodProducto;
                txtNombre2.Text = NombreProducto;

                lblCod.Text = CodProducto;
                lblNombre.Text = NombreProducto;

                div_eli.Visible = true;
            }
        }

        protected void grdListProd_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdListProd.PageIndex = e.NewPageIndex;
            ListaProductos();
        }

        protected void lblConfiEliminar_Click(object sender, EventArgs e)
        {
            string respuesta = new Fachada().EliminarProducto(Convert.ToInt32(txtCod2.Text));

            if (respuesta == "Producto eliminado con éxito!")
            {
                alertsucc.Visible = true;
                lblsucc.Text = respuesta;
                div_eli.Visible = false;
                ListaProductos();
                
            }
            else
            {
                alertVal.Visible = true;
                lblAlerta.Text = respuesta;
                div_eli.Visible = false;
            }
        }
    }
}
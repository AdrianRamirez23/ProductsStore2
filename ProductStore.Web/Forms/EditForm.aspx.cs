using ProductsStore.Back.Fachada;
using ProductsStore.Back.Maestros;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProductStore.Web.Forms
{
    public partial class EditForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            alertVal.Visible = false;
            alertsucc.Visible = false;
            if (new Utils.Utils().sesionCerrada()) return;
            txtCodProd.Enabled = false;
            txtCategoria.Enabled = false;
            txtDispo.Enabled = false;
            lbtnEditarProducto.Visible = false;
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

                    lbtnEditarProducto.Visible = true;
                }
            }
        }

        protected void lbtnEdit_Click(object sender, EventArgs e)
        {
            Productos prodEdit = new Productos();
            prodEdit.CodigoProducto = Convert.ToInt32(txtCodProd.Text);
            prodEdit.NombreProducto = txtNombre.Text.Trim();
            prodEdit.DescripcionProducto = txtDescr.Text.Trim();
            prodEdit.PrecioProducto = Convert.ToInt32(txtPrecio.Text);

            string respuesta = new Fachada().EditarProducto(prodEdit);

            if(respuesta == "Producto editado con éxito!")
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
    }
}
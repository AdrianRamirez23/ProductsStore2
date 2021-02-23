using ProductsStore.Back.Maestros;
using ProductsStore.Back.Procesos.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductsStore.Back.Procesos.Negocio
{
    internal class ProductosNegocio
    {
        internal string CrearProducto(string Nombre, string Descripcion, string Categoria, string Disponibilidad, int Precio, string ImagenURL)
        {
            return new ProductosDAO().CrearProducto(Nombre, Descripcion, Categoria, Disponibilidad, Precio, ImagenURL);
        }

        internal int ValidarCodigo()
        {
            return new ProductosDAO().ValidarCodigo();
        }
        internal Productos BuscarProducto(string Prod)
        {
            return new ProductosDAO().BuscarProducto(Prod);
        }
        internal string EditarProducto(Productos prodEdit)
        {
            return new ProductosDAO().EditarProducto(prodEdit);
        }
        internal string EliminarProducto(int idProducto)
        {
            return new ProductosDAO().EliminarProducto(idProducto);
        }
        internal List<Productos> ListarProducto()
        {
            return new ProductosDAO().ListarProducto();
        }
        internal List<Productos> FiltrarProducto(string Categoria)
        {
            return new ProductosDAO().FiltrarProducto(Categoria);
        }
    }
}

using ProductsStore.Back.Maestros;
using ProductsStore.Back.Procesos.Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductsStore.Back.Fachada
{
    public class Fachada
    {
        public string ValidarUsuario(string UserName, string Pass)
        {
            return new UsuarioNegocio().ValidarUsuario(UserName, Pass);
        }
        public Usuarios ConsultarUsuario(string UserName, string Pass)
        {
            return new UsuarioNegocio().ConsultarUsuario(UserName, Pass);
        }
        public string CrearProducto(string Nombre, string Descripcion, string Categoria, string Disponibilidad, int Precio, string ImagenURL)
        {
            return new ProductosNegocio().CrearProducto(Nombre, Descripcion, Categoria, Disponibilidad, Precio, ImagenURL);
        }
        public int ValidarCodigo()
        {
            return new ProductosNegocio().ValidarCodigo();
        }
        public Productos BuscarProducto(string Prod)
        {
            return new ProductosNegocio().BuscarProducto(Prod);
        }
        public string EditarProducto(Productos prodEdit)
        {
            return new ProductosNegocio().EditarProducto(prodEdit);
        }
        public string EliminarProducto(int idProducto)
        {
            return new ProductosNegocio().EliminarProducto(idProducto);
        }
        public List<Productos> ListarProducto()
        {
            return new ProductosNegocio().ListarProducto();
        }
        public List<Productos> FiltrarProducto(string Categoria)
        {
            return new ProductosNegocio().FiltrarProducto(Categoria);
        }
    }
}

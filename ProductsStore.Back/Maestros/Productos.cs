using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductsStore.Back.Maestros
{
    public class Productos
    { 
        public int CodigoProducto { get; set; }
        public string NombreProducto { get; set; }
        public string DescripcionProducto { get; set; }
        public string CategoriaProducto { get; set; }
        public string DisponiblidadProducto { get; set; }
        public int PrecioProducto { get; set; }
        public string ImagenProducto { get; set; }
    }
}

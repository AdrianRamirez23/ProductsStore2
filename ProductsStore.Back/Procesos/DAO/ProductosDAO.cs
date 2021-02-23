using ProductsStore.Back.Maestros;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductsStore.Back.Procesos.DAO
{
    internal class ProductosDAO
    {
        private string Conexion = ConfigurationManager.ConnectionStrings["SQLConection"].ConnectionString;

        internal string CrearProducto(string Nombre, string Descripcion, string Categoria, string Disponibilidad, int Precio, string ImagenURL)
        {
            string respuesta = null;
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_Prod_CRUD 1,'','" + Nombre + "','" + Descripcion + "','"+Categoria+"','"+Disponibilidad+"','"+Precio+"','"+ImagenURL+"'";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    respuesta = rdr[0] == DBNull.Value ? "" : rdr.GetString(0).Trim();
                }
                return respuesta;
            }
        }

        internal int ValidarCodigo()
        {
            int cod = 1;
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_Prod_CRUD 2,'','','','','','',''";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    cod = rdr[0] == DBNull.Value ? 1 : rdr.GetInt32(0);
                }
                return cod;
            }
        }

        internal Productos BuscarProducto(string Prod)
        {
            Productos prodc = new Productos();
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_Prod_CRUD 3,'','" + Prod + "','','','','',''";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    prodc.CodigoProducto = rdr[0] == DBNull.Value ? 0 : rdr.GetInt32(0);
                    prodc.NombreProducto = rdr[1] == DBNull.Value ? "" : rdr.GetString(1).Trim();
                    prodc.DescripcionProducto = rdr[2] == DBNull.Value ? "" : rdr.GetString(2).Trim();
                    prodc.CategoriaProducto = rdr[3] == DBNull.Value ? "" : rdr.GetString(3).Trim();
                    prodc.DisponiblidadProducto = rdr[4] == DBNull.Value ? "" : rdr.GetString(4).Trim();
                    prodc.PrecioProducto = rdr[5] == DBNull.Value ? 0 : Convert.ToInt32(rdr.GetValue(5));
                    prodc.ImagenProducto = rdr[6] == DBNull.Value ? "" : rdr.GetString(6).Trim(); 
                }
                return prodc;
            }
        }

        internal string EditarProducto(Productos prodEdit)
        {
            string respuesta = null;
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_Prod_CRUD 4,'"+prodEdit.CodigoProducto+"','" + prodEdit.NombreProducto + "','" + prodEdit.DescripcionProducto + "','','','" + prodEdit.PrecioProducto + "',''";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    respuesta = rdr[0] == DBNull.Value ? "" : rdr.GetString(0).Trim();
                }
                return respuesta;
            }
        }

        internal string EliminarProducto(int idProducto)
        {
            string respuesta = null;
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_Prod_CRUD 5,'" + idProducto+ "','','','','','',''";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    respuesta = rdr[0] == DBNull.Value ? "" : rdr.GetString(0).Trim();
                }
                return respuesta;
            }
        }

        internal List<Productos> ListarProducto()
        {
           List<Productos> prodList = new List<Productos>();
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_Prod_CRUD 6,'','','','','','',''";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    Productos prodc = new Productos();
                    prodc.CodigoProducto = rdr[0] == DBNull.Value ? 0 : rdr.GetInt32(0);
                    prodc.NombreProducto = rdr[1] == DBNull.Value ? "" : rdr.GetString(1).Trim();
                    prodc.DescripcionProducto = rdr[2] == DBNull.Value ? "" : rdr.GetString(2).Trim();
                    prodc.CategoriaProducto = rdr[3] == DBNull.Value ? "" : rdr.GetString(3).Trim();
                    prodc.DisponiblidadProducto = rdr[4] == DBNull.Value ? "" : rdr.GetString(4).Trim();
                    prodc.PrecioProducto = rdr[5] == DBNull.Value ? 0 : Convert.ToInt32(rdr.GetValue(5));
                    prodc.ImagenProducto = rdr[6] == DBNull.Value ? "" : rdr.GetString(6).Trim();
                    prodList.Add(prodc);
                }
                return prodList;
            }
        }

        internal List<Productos> FiltrarProducto(string Categoria)
        {
            List<Productos> prodList = new List<Productos>();
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_Prod_CRUD 7,'','','','"+Categoria+"','','',''";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    Productos prodc = new Productos();
                    prodc.CodigoProducto = rdr[0] == DBNull.Value ? 0 : rdr.GetInt32(0);
                    prodc.NombreProducto = rdr[1] == DBNull.Value ? "" : rdr.GetString(1).Trim();
                    prodc.DescripcionProducto = rdr[2] == DBNull.Value ? "" : rdr.GetString(2).Trim();
                    prodc.CategoriaProducto = rdr[3] == DBNull.Value ? "" : rdr.GetString(3).Trim();
                    prodc.DisponiblidadProducto = rdr[4] == DBNull.Value ? "" : rdr.GetString(4).Trim();
                    prodc.PrecioProducto = rdr[5] == DBNull.Value ? 0 : Convert.ToInt32(rdr.GetValue(5));
                    prodc.ImagenProducto = rdr[6] == DBNull.Value ? "" : rdr.GetString(6).Trim();
                    prodList.Add(prodc);
                }
                return prodList;
            }
        }


    }
}

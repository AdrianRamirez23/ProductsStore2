using ProductsStore.Back.Maestros;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductsStore.Back.Procesos.DAO
{
    internal class UsuarioDAO
    {
        private string Conexion= ConfigurationManager.ConnectionStrings["SQLConection"].ConnectionString;

        internal string ValidarUsuario(string UserName, string Pass)
        {
            string respuesta = null;
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_User_Loguin 1,'"+UserName+"','"+Pass+"'";
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

        internal Usuarios ConsultarUsuario(string UserName, string Pass)
        {
            Usuarios userVal = new Usuarios();
            using (SqlConnection con = new SqlConnection(Conexion))
            {
                string sentencia = "exec Products_User_Loguin 2,'" + UserName + "','" + Pass + "'";
                SqlCommand cmd = new SqlCommand(sentencia, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    userVal.UserName = rdr[0] == DBNull.Value ? "" : rdr.GetString(0).Trim();
                    userVal.Password = rdr[1] == DBNull.Value ? "" : rdr.GetString(1).Trim();
                    userVal.Name = rdr[2] == DBNull.Value ? "" : rdr.GetString(2).Trim();
                    userVal.LastName = rdr[3] == DBNull.Value ? "" : rdr.GetString(3).Trim();
                    userVal.TypeUser = rdr[4] == DBNull.Value ? "" : rdr.GetString(4).Trim();
                    userVal.StatusUser = rdr[5] == DBNull.Value ? false : rdr.GetBoolean(5);
                    userVal.EmailUser = rdr[6] == DBNull.Value ? "" : rdr.GetString(6).Trim();
                }
                return userVal;
            }
        }
    }
}

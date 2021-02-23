using ProductsStore.Back.Maestros;
using ProductsStore.Back.Procesos.DAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProductsStore.Back.Procesos.Negocio
{
    internal class UsuarioNegocio
    {
        internal string ValidarUsuario(string UserName, string Pass)
        {
            return new UsuarioDAO().ValidarUsuario(UserName, Pass);
        }
        internal Usuarios ConsultarUsuario(string UserName, string Pass)
        {
            return new UsuarioDAO().ConsultarUsuario(UserName, Pass);
        }
    }
}

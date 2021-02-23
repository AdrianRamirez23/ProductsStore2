using ProductsStore.Back.Maestros;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProductStore.Web.Utils
{
    public class SessionManager
    {
        public static Usuarios usuario
        {
            get { return (Usuarios)(HttpContext.Current.Session["Usuario"] ?? null); }
            set { HttpContext.Current.Session["Usuario"] = value; }
        }

        public static string url
        {
            get { return (HttpContext.Current.Session["url"] ?? "").ToString(); }
            set { HttpContext.Current.Session["url"] = value; }
        }

        public static string ValueCanal
        {
            get { return (HttpContext.Current.Session["ValueCanal"] ?? "").ToString(); }
            set { HttpContext.Current.Session["ValueCanal"] = value; }
        }
    }
}
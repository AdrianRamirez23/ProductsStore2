using Nest;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Remote;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Sellenium.Test
{
    class Program
    {
        static void Main(string[] args)
        {

            IWebDriver driver = new ChromeDriver();
          
            driver.Navigate().GoToUrl("https://localhost:44320/Login");
            driver.Manage().Window.Maximize();
            

            //Pruebas de Inicio de Sesión
            inicioSesion(driver);

            //Pruebas de Cerrar Sesión
            CerrarSesion(driver);

            //Crear Nuevo Producto
            CrearNuevoProducto(driver);

            //Editar Producto
            EditarProducto(driver);

            //Listar Productos
            ListarDetalles(driver);

            //Eliminar Productos
            EliminarProductos(driver);

            //Eliminar Segunda Opcion
            EliminarProductos2(driver);
        }
        private static void inicioSesion(IWebDriver driver)
        {
            IWebElement input = driver.FindElement(By.Id("txtuser"));
            input.SendKeys("Admin");

            IWebElement inputPass = driver.FindElement(By.Id("txtPass"));
            inputPass.SendKeys("12345");

            IWebElement btnLogin = driver.FindElement(By.Id("btnLogin"));
            btnLogin.Click();

            Thread.Sleep(500);
        }
        private static void CerrarSesion(IWebDriver driver)
        {

            IWebElement btnCerrar = driver.FindElement(By.Id("btnCerrar"));
            btnCerrar.Click();

            Thread.Sleep(1000);

            IWebElement btnCloseSession = driver.FindElement(By.Id("lbtnCerrarSesion"));
            btnCloseSession.Click();

            Thread.Sleep(5000);
        }

        private static void CrearNuevoProducto(IWebDriver driver)
        {
            inicioSesion(driver);


            IWebElement btnCerrar = driver.FindElement(By.Id("btnCerrar"));
            btnCerrar.Click();

            Thread.Sleep(1000);

            IWebElement btnNuevo = driver.FindElement(By.Id("easypiechart-blue"));
            btnNuevo.Click();

            Thread.Sleep(1000);

            IWebElement selectCategoria = driver.FindElement(By.Id("MainContent_ddlCategoria"));
            var selectElement = new SelectElement(selectCategoria);
            selectElement.SelectByValue("2");

            IWebElement NombreProducto = driver.FindElement(By.Id("MainContent_txtNombre"));
            NombreProducto.SendKeys("Lampara");

            IWebElement selectDiponibilidad = driver.FindElement(By.Id("MainContent_ddlDisponibilidad"));
            var selectElem = new SelectElement(selectDiponibilidad);
            selectElem.SelectByValue("1");

            IWebElement DescriProducto = driver.FindElement(By.Id("MainContent_txtDescr"));
            DescriProducto.SendKeys("Lampara de piso");

            IWebElement PrecioProd = driver.FindElement(By.Id("MainContent_txtPrecio"));
            PrecioProd.SendKeys("100000");

            IWebElement CargarArchivo = driver.FindElement(By.Id("MainContent_FileUpload1"));
            CargarArchivo.SendKeys("C:/Users/aramirez/Downloads/entity-products-app-Adrian/ProductStore.Web/ImagenesProductos/lampara_piso.jpg");

            IWebElement btnCargar = driver.FindElement(By.Id("MainContent_lbtnSubir"));
            btnCargar.Click();

            Thread.Sleep(1000);

            IWebElement btnCrear = driver.FindElement(By.Id("MainContent_lbtnCrearProducto"));
            btnCrear.Click();

            Thread.Sleep(5000);
        }
        private static void EditarProducto(IWebDriver driver)
        {
            IWebElement btnEditar = driver.FindElement(By.Id("formEdit"));
            btnEditar.Click();

            IWebElement txtBuscar = driver.FindElement(By.Id("MainContent_txtBuscar"));
            txtBuscar.SendKeys("lampara");
            
            IWebElement btnBuscar = driver.FindElement(By.Id("MainContent_btnchat"));
            btnBuscar.Click();

            IWebElement txtprodEdit = driver.FindElement(By.Id("MainContent_txtNombre"));
            txtprodEdit.Clear();
            txtprodEdit.SendKeys("Lámpara");
            
            IWebElement DescriProducto = driver.FindElement(By.Id("MainContent_txtDescr"));
            DescriProducto.Clear();
            DescriProducto.SendKeys("Lámpara de piso sala");

            
            IWebElement PrecioProducto = driver.FindElement(By.Id("MainContent_txtPrecio"));
            PrecioProducto.Clear();
            PrecioProducto.SendKeys("150000");
            
            IWebElement btnEditarPro = driver.FindElement(By.Id("MainContent_lbtnEditarProducto"));
            btnEditarPro.Click();
            Thread.Sleep(1000);

            IWebElement btnConfirm = driver.FindElement(By.Id("MainContent_lbtnEdit"));
            btnConfirm.Click();

            Thread.Sleep(5000);
        }

        private static void ListarDetalles(IWebDriver driver)
        {
            
            IWebElement btnListar = driver.FindElement(By.Id("formList"));
            btnListar.Click();

            IWebElement selectCat= driver.FindElement(By.Id("MainContent_ddlCategoria"));
            var selectElem = new SelectElement(selectCat);
            selectElem.SelectByValue("2");

            
            IWebElement btnBuscarCat = driver.FindElement(By.Id("MainContent_btnchat"));
            btnBuscarCat.Click();

            Thread.Sleep(5000);

        }
        private static void EliminarProductos(IWebDriver driver)
        {

            IWebElement btnEliminar = driver.FindElement(By.Id("formDelete"));
            btnEliminar.Click();

            IWebElement btnElimReg = driver.FindElement(By.Id("MainContent_grdListProd_lblDelete_4"));
            btnElimReg.Click();  

            IWebElement btnConfirEli = driver.FindElement(By.Id("MainContent_lbtnConfElim"));
            btnConfirEli.Click();
            Thread.Sleep(1000);

            IWebElement btnAcept = driver.FindElement(By.Id("MainContent_lblConfiEliminar"));
            btnAcept.Click();
            Thread.Sleep(5000);

        }
        private static void EliminarProductos2(IWebDriver driver)
        {
            

            IWebElement btnPestana = driver.FindElement(By.Id("tabElim"));
            btnPestana.Click();
            Thread.Sleep(1500);

            IWebElement txtBuscarEli = driver.FindElement(By.Id("MainContent_txtBuscar"));
            txtBuscarEli.SendKeys("piso");

            IWebElement btnBuscarEli = driver.FindElement(By.Id("MainContent_btnchat"));
            btnBuscarEli.Click();
            Thread.Sleep(1500);

            IWebElement btnElim= driver.FindElement(By.Id("MainContent_lbtnEliminarProducto"));
            btnElim.Click();
            Thread.Sleep(1000);

            IWebElement btnAcept = driver.FindElement(By.Id("MainContent_lbtnElim"));
            btnAcept.Click();
            Thread.Sleep(5000);

        }

    }
}

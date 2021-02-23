<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearForm.aspx.cs" Inherits="ProductStore.Web.Forms.CrearForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main" >
		<div class="row">

			<ol class="breadcrumb">
				<li><a href="Index.aspx">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Panel de Control</li>
			</ol>
		</div><!--/.row-->
		<div class="container col-4">
				  <div class="alert alert-warning alert-dismissible" role="alert" runat="server" id="alertVal">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Alerta!</strong> <asp:Label ID="lblAlerta" runat="server" Text=""></asp:Label>
            </div>
			</div>
        <div class="container col-4">
				  <div class="alert alert-success alert-dismissible" role="alert" runat="server" id="alertsucc">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Alerta!</strong> <asp:Label ID="lblsucc" runat="server" Text=""></asp:Label>
            </div>
			</div>
          
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Control del Sistema</h1>
			</div>
		</div><!--/.row-->

			<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default" style="height:850px">
					<div class="panel-heading">
						Formulario para Crear un Nuevo Producto</div>
						
					
                    <div class="col-md-6" style="margin-top:3%" >
                        <div class="form-group">
                            <label>Código del Producto:</label>
                            <asp:TextBox ID="txtCodProd" CssClass="form-control"  min-width="100%"  runat="server"  ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nombre del Producto:</label>
                            <asp:TextBox ID="txtNombre" CssClass="form-control" runat="server" Placeholder="Ingrese Nombre del Producto" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Descripción del Producto:</label>
                            <asp:TextBox ID="txtDescr" CssClass="form-control" runat="server" Placeholder="Ingrese Descripción del producto del Producto" ></asp:TextBox>
                        </div>            
                        <div class="form-group">
                            <label>Cargar Imagen:</label>
                             <asp:FileUpload ID="FileUpload1"  accept=".jpg" runat="server" />
                        </div>
                          <div class="form-group">
                            <asp:Image ID="ImagenCargada" Width="50%" class="img-responsive img-rounded"  runat="server" />
                        </div>
                        <asp:LinkButton ID="lbtnSubir" class="btn btn-primary btn-lg" OnClick="lbtnSubir_Click" runat="server"><i class="fas fa-file-upload"></i> Subir Imagen</asp:LinkButton>
                    </div>
                    <div class="col-md-6"  style="margin-top:3%">
                        <div class="form-group">
                            <label>Seleccione Categoria</label>
                            <asp:DropDownList ID="ddlCategoria" Height="46px" CssClass="form-control" runat="server">
								<asp:ListItem Value="0">Seleccione una Categoria</asp:ListItem>
								<asp:ListItem Value="1">Audio y Video</asp:ListItem>
								<asp:ListItem Value="2">Electrodomésticos</asp:ListItem>
								<asp:ListItem Value="3">Celulares</asp:ListItem>
								<asp:ListItem Value="3">Otros</asp:ListItem>
                            </asp:DropDownList>    
                        </div>
                        <div class="form-group">
                            <label>Seleccione Disponibilidad</label>
                             <asp:DropDownList ID="ddlDisponibilidad" Height="46px" CssClass="form-control" runat="server">
								<asp:ListItem Value="0">Seleccione Disponiblidad</asp:ListItem>
								<asp:ListItem Value="1">Si</asp:ListItem>
								<asp:ListItem Value="2">No</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                         <div class="form-group">
                            <label>Precio del Producto:</label>
                            <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" TextMode="Number" Placeholder="Ingrese Precio del Producto" ></asp:TextBox>
                        </div>
                        <asp:LinkButton ID="lbtnCrearProducto" class="btn btn-default btn-lg" OnClick="lbtnCrearProducto_Click" runat="server"><i class="fas fa-plus-square"></i> Crear Producto</asp:LinkButton>

                        
                       
                    </div>
                </div>



            </div>
			</div>
		</div><!--/.row-->

		
</asp:Content>

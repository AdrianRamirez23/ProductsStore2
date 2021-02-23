<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditForm.aspx.cs" Inherits="ProductStore.Web.Forms.EditForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel"><i class="fas fa-exclamation-triangle"></i> Información Importante!</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    Está Seguro que desea editar este producto?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    <asp:LinkButton ID="lbtnEdit" class="btn btn-primary" OnClick="lbtnEdit_Click" runat="server"><i class="fas fa-thumbs-up"></i> Sí, estoy seguro</asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
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
						Formulario para Editar un Producto</div>
                    
                    <label style="margin-top:3%;margin-left:1%">Producto a Buscar para Editar:</label>
                    <div class="col-md-6 input-group" style="margin-left:1%;margin-bottom:1%">
                        <asp:TextBox ID="txtBuscar" class="form-control input-md" PlaceHolder="Ingrese nombre, categoría o descripción del producto a editar" min-width="80%"  runat="server"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:LinkButton ID="btnchat" class="btn btn-default btn-lg" OnClick="btnchat_Click"  runat="server">&nbsp<i class="fas fa-search fa-2x fa-solid" style="margin-top:7%">&nbsp</i></asp:LinkButton>
             </span>
                    </div>
                    <div class="container-fluid">
                        <hr />
                    </div>
                    <div class="col-md-6" style="margin-top:1%" > 
                        <div class="form-group">
                            <label>Código del Producto:</label>
                            <asp:TextBox ID="txtCodProd" CssClass="form-control"  min-width="100%"  runat="server"  ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nombre del Producto:</label>
                            <asp:TextBox ID="txtNombre" CssClass="form-control" min-width="100%" runat="server"  ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Descripción del Producto:</label>
                            <asp:TextBox ID="txtDescr" CssClass="form-control" min-width="100%" runat="server"  ></asp:TextBox>
                        </div>            
                          <div class="form-group">
                            <asp:Image ID="ImagenCargada" Width="50%" class="img-responsive img-rounded"  runat="server" />
                        </div>
                       <asp:LinkButton ID="lbtnEditarProducto" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal"  runat="server"><i class="fas fa-plus-square"></i> Editar Producto</asp:LinkButton>
                    </div>
                    <div class="col-md-6"  style="margin-top:1%">                     
                        <div class="form-group">
                            <label>Seleccione Categoria</label>
                            <asp:TextBox ID="txtCategoria" CssClass="form-control" min-width="100%" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Seleccione Disponibilidad</label>
                            <asp:TextBox ID="txtDispo" CssClass="form-control" min-width="100%" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label>Precio del Producto:</label>
                            <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" TextMode="Number" Placeholder="Ingrese Precio del Producto" ></asp:TextBox>
                        </div>

                    </div>
                </div>



            </div>
			</div>
		</div><!--/.row-->
</asp:Content>

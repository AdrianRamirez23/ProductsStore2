<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListForm.aspx.cs" Inherits="ProductStore.Web.Forms.ListForm" %>
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
                <strong>Enbuenahora!</strong> <asp:Label ID="lblsucc" runat="server" Text=""></asp:Label>
            </div>
			</div>
          
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Control del Sistema</h1>
			</div>
		</div><!--/.row-->

			<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default" style="height:1250px">
					<div class="panel-heading">
						Lista de Productos</div>
                    
                    <label style="margin-top:3%;margin-left:1%">Listar por Categoría:</label>
                    <div class="col-6 input-group" style="margin-left:1%;margin-bottom:1%">
                        <asp:DropDownList ID="ddlCategoria" class="form-control input-md" Height="46px" runat="server">
                                <asp:ListItem Value="0">Seleccione una Categoria</asp:ListItem>
								<asp:ListItem Value="1">Audio y Video</asp:ListItem>
								<asp:ListItem Value="2">Electrodomésticos</asp:ListItem>
								<asp:ListItem Value="3">Celulares</asp:ListItem>
								<asp:ListItem Value="4">Otros</asp:ListItem>
								<asp:ListItem Value="5">Lista Completa</asp:ListItem>
                        </asp:DropDownList>
                        <span class="input-group-btn">
                            <asp:LinkButton ID="btnchat" class="btn btn-default btn-lg" OnClick="btnchat_Click" runat="server">&nbsp<i class="fas fa-search fa-2x fa-solid" style="margin-top:7%">&nbsp</i></asp:LinkButton>
                       </span>
                    </div>
                    <div class="container-fluid">
                        <hr />
                    </div>
                    <div class="col-md-12" style="margin-top:1%" > 
                                    <asp:GridView ID="grdListProd" runat="server" CssClass="table table-striped table-bordered table-hover" AllowPaging="true" OnPageIndexChanging="grdListProd_PageIndexChanging" AutoGenerateColumns="false">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Código Producto">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblcodProd" runat="server" Text='<%# Eval("CodigoProducto") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Nombre Producto">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblNmProd" runat="server" Text='<%# Eval("NombreProducto") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Descripción Producto">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDesProd" runat="server" Text='<%# Eval("DescripcionProducto") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Categoría Producto">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblCatProd" runat="server" Text='<%# Eval("CategoriaProducto") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Disponibilidad Producto">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblDispo" runat="server" Text='<%# Eval("DisponiblidadProducto") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Precio Producto">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblPrecio" runat="server" Text='<%# Eval("PrecioProducto") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Imagen Producto">
                                                <ItemTemplate>
                                                    <asp:Image ID="ImagenCargada" Width="50%" CssClass="img-responsive img-rounded" ImageUrl='<%# Eval("ImagenProducto") %>' runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                    </div>
                </div>
            </div>
			</div>
		</div><!--/.row-->
</asp:Content>

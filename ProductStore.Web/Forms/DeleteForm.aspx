<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteForm.aspx.cs" Inherits="ProductStore.Web.Forms.DeleteForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Modal -->

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel"><i class="fas fa-exclamation-triangle"></i>Información Importante!</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            Está Seguro que desea eliminar este producto?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                            <asp:LinkButton ID="lbtnElim" class="btn btn-primary" OnClick="lbtnElim_Click" runat="server"><i class="fas fa-thumbs-up"></i> Sí, estoy seguro</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myModalLabel1"><i class="fas fa-exclamation-triangle"></i>Información Importante!</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            Está Seguro que desea eliminar este producto?
                    <br />
                            <br />
                            <strong>Codigo Producto</strong>
                            <asp:Label ID="lblCod" runat="server" Text="Label"></asp:Label><br />
                            <strong>Nombre Producto</strong>
                            <asp:Label ID="lblNombre" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                            <asp:LinkButton ID="lblConfiEliminar" class="btn btn-primary" OnClick="lblConfiEliminar_Click" runat="server"><i class="fas fa-thumbs-up"></i> Sí, estoy seguro</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
                <div class="row">

                    <ol class="breadcrumb">
                        <li><a href="Index.aspx">
                            <em class="fa fa-home"></em>
                        </a></li>
                        <li class="active">Panel de Control</li>
                    </ol>
                </div>
                <!--/.row-->
                <div class="container col-4">
                    <div class="alert alert-warning alert-dismissible" role="alert" runat="server" id="alertVal">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <strong>Alerta!</strong>
                        <asp:Label ID="lblAlerta" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="container col-4">
                    <div class="alert alert-success alert-dismissible" role="alert" runat="server" id="alertsucc">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <strong>Alerta!</strong>
                        <asp:Label ID="lblsucc" runat="server" Text=""></asp:Label>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Control del Sistema</h1>
                    </div>
                </div>
                <!--/.row-->

                <div class="row">
                    <div class="col-lg-12">
                    </div>
                    <div class="container col-md-11" style="margin-left: 1%">
                        <div class="panel panel-default" style="height: 1250px">
                            <div class="panel-body tabs">
                                <ul class="nav nav-tabs">
                                    <li><a href="#tab1" data-toggle="tab">Eliminar Productos desde una Lista</a></li>
                                    <li><a href="#tab2" id="tabElim" data-toggle="tab">Eliminar Productos desde Busqueda por Coincidencia</a></li>

                                </ul>
                                <div class="tab-content">


                                    <div class="tab-pane fade in active" id="tab1">
                                        <h2>Para Eliminar un producto dar click en el botón que corresponde al registro:</h2>
                                        <div runat="server" id="div_eli" style="margin-bottom: 5%">
                                            <div class="col-md-6" style="margin-top: 1%">
                                                <div class="form-group">
                                                    <label>Código del Producto:</label>
                                                    <asp:TextBox ID="txtCod2" CssClass="form-control" min-width="100%" runat="server"></asp:TextBox>
                                                </div>
                                                <div style="margin-bottom: 4%">
                                                    <asp:LinkButton ID="lbtnConfElim" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal1" runat="server"><i class="fas fa-minus"></i> Confirmar</asp:LinkButton>
                                                </div>
                                            </div>
                                            <div class="col-md-6" style="margin-top: 1%">
                                                <div class="form-group">
                                                    <label>Nombre Producto</label>
                                                    <asp:TextBox ID="txtNombre2" CssClass="form-control" min-width="100%" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="margin-top: 3%">
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
                                                    <asp:TemplateField HeaderText="Acción">
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="lblDelete" CssClass="btn btn-success btn-xs" OnClick="lblDelete_Click" runat="server"><i class="fas fa-minus"></i> Eliminar Registro</asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                        </div>

                                    </div>
                                    <div class="tab-pane fade" id="tab2">
                                        <asp:UpdatePanel ID="updatepnl" runat="server">
                                            <ContentTemplate> 
                                      
                                                <label style="margin-top: 3%; margin-left: 1%">Producto a Buscar para Eliminar:</label>
                                                <div class="col-md-6 input-group" style="margin-left: 1%; margin-bottom: 1%">
                                                    <asp:TextBox ID="txtBuscar" class="form-control input-md" PlaceHolder="Ingrese nombre, categoría o descripción del producto a Eliminar" min-width="80%" runat="server"></asp:TextBox>
                                                    <span class="input-group-btn">
                                                        <asp:LinkButton ID="btnchat" class="btn btn-default btn-lg" OnClick="btnchat_Click" runat="server">&nbsp<i class="fas fa-search fa-2x fa-solid" style="margin-top:7%">&nbsp</i></asp:LinkButton>
                                                    </span>
                                                </div>
                                                <div class="container-fluid">
                                                    <hr />
                                                </div>
                                                <div class="col-md-6" style="margin-top: 1%">
                                                    <div class="form-group">
                                                        <label>Código del Producto:</label>
                                                        <asp:TextBox ID="txtCodProd" CssClass="form-control" min-width="100%" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Nombre del Producto:</label>
                                                        <asp:TextBox ID="txtNombre" CssClass="form-control" min-width="100%" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Descripción del Producto:</label>
                                                        <asp:TextBox ID="txtDescr" CssClass="form-control" min-width="100%" runat="server"></asp:TextBox>
                                                    </div>
                                                    <div class="form-group">
                                                        <asp:Image ID="ImagenCargada" Width="50%" CssClass="img-responsive img-rounded" runat="server" />
                                                    </div>
                                                    <asp:LinkButton ID="lbtnEliminarProducto" CssClass="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal" runat="server"><i class="fas fa-plus-square"></i> Eliminar Producto</asp:LinkButton>
                                                </div>
                                                <div class="col-md-6" style="margin-top: 1%">
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
                                                        <asp:TextBox ID="txtPrecio" CssClass="form-control" runat="server" TextMode="Number" Placeholder="Ingrese Precio del Producto"></asp:TextBox>
                                                    </div>

                                                </div>
                                                </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="btnchat" ></asp:AsyncPostBackTrigger>
                                            </Triggers>
                                        </asp:UpdatePanel>


                                        <%--Grilla de respuesta del Servicio--%>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!--/.panel-->
                    </div>
                    <!--/.col-->


                </div>
                <!-- /.row -->
            </div>
      

    <!--/.row-->
</asp:Content>

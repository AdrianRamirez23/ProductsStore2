<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProductStore.Web.Forms.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main ">
        <!-- Modal -->
        <div class="modal fade" id="ModalEquipo" tabindex="-1" role="dialog" aria-labelledby="ModalEquipoLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="ModalEquipoLabel">Equipo de Desarrollo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Las Funciones  diseñadas y elaboradas por:
						<ul class="list-group mt-4" >
                            <li class="list-group-item"><strong>Camilo Gutierrez</strong>  - Crear</li>
                            <li class="list-group-item"><strong>Tania Mera</strong> - Eliminar desde Una Búsqueda</li>
                            <li class="list-group-item"><strong>Yasmani Martinez</strong> - Eliminar desde Lista</li>
                            <li class="list-group-item"><strong>Adrian Ramirez</strong> - Listar</li>
                            <li class="list-group-item"><strong>Angélica Marmolejo</strong> - Editar</li>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" id="btnCerrar" data-dismiss="modal">Cerrar</button>
                        
                    </div>
                </div>
            </div>
        </div>

		<div class="row">
			<ol class="breadcrumb">
				<li><a href="Index.aspx">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Panel de Control</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Control del Sistema</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-xs-6 col-md-6">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Nuevos Productos</h4>
						<div class="easypiechart" id="easypiechart-blue" ><a href="CrearForm.aspx"><i class="fas fa-plus-circle fa-10x"  ></i></a> </div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-6">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Edición de Productos</h4>
						<div class="easypiechart" id="easypiechart-orange"  ><a href="EditForm.aspx"><i class="fas fa-edit fa-10x"  ></i></a> </div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-6">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Eliminar Productos</h4>
						<div class="easypiechart" id="easypiechart-teal"  ><a href="DeleteForm.aspx"><i class="fas fa-trash-alt fa-10x"  ></i></a> </div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-6">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>Detalles</h4>
						<div class="easypiechart" id="easypiechart-red"  ><a href="ListForm.aspx"><i class="fas fa-th-list fa-10x"  ></i></a> </div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		</div>

	<script>
       
   $(document).ready(function()
   {
       $("#ModalEquipo").modal("show");
   });
    </script>
</asp:Content>

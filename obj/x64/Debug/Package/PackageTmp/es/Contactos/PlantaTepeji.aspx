<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="PlantaTepeji.aspx.cs" Inherits="WebSanchez2016.es.Contactos.PlantaTepeji" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Planta CDMX - Contactos - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="../../Content/jquery-1.12.1.min.js"></script>
 <script src="../../Content/scripts/buscaTabla.js" type="text/javascript"></script>
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('table.directorio').tableSearch({
		            searchText: 'Búsqueda',
		            searchPlaceHolder: '',
		            caseSensitive: false
		        });
		    });
		</script>
    <div class="Contactos" id="divContactos" runat="server">
    <br />
    <asp:Table id="tablaDirectorio" CssClass="directorio" Runat="server"/>
        </div>
</asp:Content>

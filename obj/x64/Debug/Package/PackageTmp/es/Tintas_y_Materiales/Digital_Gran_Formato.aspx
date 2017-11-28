<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master"  AutoEventWireup="true" CodeBehind="Digital_Gran_Formato.aspx.cs" Inherits="WebSanchez2016.es.Tintas_y_Materiales.Digital_Gran_Formato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Digital Gran Formato - Tintas y materiales - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="TintasyMateriales" id="divTintasyMateriales" runat="server">
    <object style="z-index:-2" class="iframeSinBordes" data="../../es/Archivos/Descargas/FLYER_INKJET.pdf" type="application/pdf" >
alt : <a href="../../es/Archivos/Descargas/FLYER_INKJET.pdf">Flyer Inkjet</a>
</object>
    </div>
	<br><br><br>
</asp:Content>
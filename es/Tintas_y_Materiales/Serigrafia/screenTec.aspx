<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="screenTec.aspx.cs" Inherits="WebSanchez2016.es.Tintas_y_Materiales.Serigrafia.screenTec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ScreenTec - Serigrafía - Tintas y materiales - Grupo S&aacute;nchez
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  <div class="TintasyMateriales" id="div1" runat="server">
    <object style="z-index:-2" class="iframeSinBordes" data="../../Archivos/Descargas/SCREENTEC.pdf" type="application/pdf" >
alt : <a href="../../Archivos/Descargas/SCREENTEC.pdf">ScreenTec</a>
</object>
    </div>
	<br/><br/><br/>
</asp:Content>

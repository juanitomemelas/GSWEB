<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Planta_Tepeji.aspx.cs" Inherits="WebSanchez2016.es.Planta_Tepeji" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Planta Tepeji - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="VideoPlantaTepeji" id="divVideoPlantaTepeji" runat="server">
        <video width="800" height="600" controls autoplay preload="auto">
            <source src="../Global_Video/Planta_Tepeji.mp4" type="video/mp4"> Este explorador no soporta la carga de video, debe actualizarlo.
        </video> 
    </div>
</asp:Content>

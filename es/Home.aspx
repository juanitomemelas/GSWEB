<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebSanchez2016.es.Home1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Tintas para impresión
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <div class="container">
            <div style="display: inline-block;">
                <img class="imagenCarrusel" src="../Global_Imgs/FondoHomeColores_1233x545.png" fuente="../Global_Imgs/FondoHomeColores_1233x545.png" id="foto1" alt="" />
            </div>
            <div>
                <img class="imagenCarrusel" fuente="../Global_Imgs/FondoKomori_1233x545.png" src="" id="foto2" alt="" />
            </div>
            <div>
                <img class="imagenCarrusel" fuente="../Global_Imgs/FondoHomePlantaTP1_1233x545.png" src="" id="foto3" alt="" />
            </div>
            <div>
                <img class="imagenCarrusel" fuente="../Global_Imgs/FondoHomePantone_1233x545.png" src="" id="foto4" alt="" />
            </div>
            <div>
                <img class="imagenCarrusel" fuente="../Global_Imgs/FondoHomeTecpro_1233x545.png" src="" id="foto5" alt="" />
            </div>
            <div>
                <img class="imagenCarrusel" fuente="../Global_Imgs/FondoHomeTecpro2_1233x545.png" src=""id="foto6" alt="" />
            </div>
            <div>
                <img class="imagenCarrusel" fuente="../Global_Imgs/FondoHomeHP_1233x545.png" src="" id="foto7" alt="" />
            </div>
            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
</asp:Content>
<asp:Content ID="scriptHolder" ContentPlaceHolderID="javascriptPlaceHolder" runat="server">
     <script type="text/javascript">
         $(document).ready(function () { function n() { var n = $(".container div").eq(t); "" == n.children().attr("src") ? n.children().attr("src", n.children().attr("fuente")).load(function () { c.hide(), n.fadeIn() }) : (c.hide(), n.fadeIn()) } function e() { autoSlide = setInterval(function () { (t += 1) > i - 1 && (t = 0), n() }, 1e4) } $(".next").click(function () {clearInterval(autoSlide), (t += 1) > i - 1 && (t = 0), n(), e() }), $(".prev").click(function () { clearInterval(autoSlide), (t -= 1) < 0 && (t = i - 1), n(), e() }); var t = 0, c = $(".container div"), i = c.length; e() });
    </script>

</asp:Content>
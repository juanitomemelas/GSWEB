<%@ Page Title="" Language="C#" MasterPageFile="Es_Master.Master" AutoEventWireup="true" CodeBehind="Home_1.aspx.cs" Inherits="WebSanchez2016.es.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Tintas para impresión
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            var tiempo_inicio_anim = 200;
            var tiempo_entre_img = 5000;
            var tiempo_fade = 1000;

            var iWidthImgs = $("#animacion_img").width();

            function animacion_simple() {
                $("#foto1").fadeIn(tiempo_fade);

                setTimeout(function () {
                    $("#foto1").fadeOut(tiempo_fade);
                    $("#foto2").fadeIn(tiempo_fade);
                }, tiempo_entre_img);

                setTimeout(function () {
                    $("#foto2").fadeOut(tiempo_fade);
                    $("#foto3").fadeIn(tiempo_fade);
                }, tiempo_entre_img * 2);

                setTimeout(function () {
                    $("#foto3").fadeOut(tiempo_fade);
                    $("#foto4").fadeIn(tiempo_fade);
                }, tiempo_entre_img * 3);

                setTimeout(function () {
                    $("#foto4").fadeOut(tiempo_fade);
                    $("#foto5").fadeIn(tiempo_fade);
                }, tiempo_entre_img * 4);

                setTimeout(function () {
                    $("#foto5").fadeOut(tiempo_fade);
                    $("#foto6").fadeIn(tiempo_fade);
                }, tiempo_entre_img * 5);

                setTimeout(function () {
                    $("#foto6").fadeOut(tiempo_fade);
                    $("#foto7").fadeIn(tiempo_fade);
                }, tiempo_entre_img * 5);

                setTimeout(function () {
                    $("#foto7").fadeOut(tiempo_fade);
                    animacion_simple();
                }, tiempo_entre_img * 6);

            }

            $("#foto1").width(iWidthImgs);
            $("#foto1").height(545);
            $("#foto2").width(iWidthImgs);
            $("#foto2").height(545);
            $("#foto3").width(iWidthImgs);
            $("#foto3").height(545);
            $("#foto4").width(iWidthImgs);
            $("#foto4").height(545);
            $("#foto5").width(iWidthImgs);
            $("#foto5").height(545);
            $("#foto6").width(iWidthImgs);
            $("#foto6").height(545);
            $("#foto7").width(iWidthImgs);
            $("#foto7").height(545);

            setTimeout(function () {
                animacion_simple();
            }, tiempo_inicio_anim);

        });
    </script>

    <div id="animacion_img">  
        <img src="../Global_Imgs/FondoHomeColores_1233x545.png" id="foto1" alt="" />
        <img src="../Global_Imgs/FondoHomeKomori_1233x545.png" id="foto2" alt="" />
        <img src="../Global_Imgs/FondoHomePlantaTP1_1233x545.png" id="foto3" alt="" />
        <img src="../Global_Imgs/FondoHomePantone_1233x545.png" id="foto4" alt="" />
        <img src="../Global_Imgs/FondoHomeTecpro_1233x545.png" id="foto5" alt="" />
        <img src="../Global_Imgs/FondoHomeTecpro2_1233x545.png" id="foto6" alt="" />
        <img src="../Global_Imgs/FondoHomeHP_1233x545.png" id="foto7" alt="" />
    </div>

    <p id="parrafo"></p>
</asp:Content>
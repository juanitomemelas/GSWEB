<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Prensas_Digitales_HP.aspx.cs" Inherits="WebSanchez2016.es.Equipo.GS_Digital.Prensas_Digitales_HP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Prensas digitales HP - GS Digital - Equipo - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
         <script src="../../../Content/jquery-1.12.1.min.js" type="text/javascript"></script>
    <div class="Equipo" id="divEquipo" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            var currentIndex = 0, items = $('.container div'), itemAmt = items.length;

            function cycleItems() {
                var item = $('.container div').eq(currentIndex);
                if ("" == item.children().attr('src')) {
                    item.children().attr("src", item.children().attr('fuente')).load(function () {
                        items.hide();
                        item.fadeIn();
                    })
                } else {
                    items.hide();
                    item.fadeIn();
                }
            }

            function initTimer() {
                autoSlide = setInterval(function () {
                    currentIndex += 1;
                    if (currentIndex > itemAmt - 1) {
                        currentIndex = 0;
                    }
                    cycleItems();
                }, 1000);
            }

            $('.next').click(function () {
                //                clearInterval(autoSlide);
                currentIndex += 1;
                if (currentIndex > itemAmt - 1) {
                    currentIndex = 0;
                }
                cycleItems();
              //  initTimer();
            });

            $('.prev').click(function () {
                //              clearInterval(autoSlide);
                currentIndex -= 1;
                if (currentIndex < 0) {
                    currentIndex = itemAmt - 1;
                }
                cycleItems();
                //     initTimer();
            });

            //   initTimer();
        });
    </script>
    <div class="Presentacion">
        <div class="container">
            <div style="display: inline-block;">
            <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoHP/HP_Indigo_3600_Digital_Press_Brochure_UK.pdf')"fuente="" src="../../../Global_Imgs/PrensasHP/HP3600.png" id="foto1" alt="HP3600" />

            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoHP/HP_Indigo_5600_Digital_Press_Brochure_UK.pdf')" src="" fuente="../../../Global_Imgs/PrensasHP/HP5600.png" id="foto2" alt="HP5600" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoHP/HP_Indigo_7800_Digital_Press_Brochure_UK.pdf')" src="" fuente="../../../Global_Imgs/PrensasHP/HP7800.png" id="foto3" alt="HP7800" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoHP/HP_Indigo_10000_Digital_Press_Brochure_UK.pdf')" src="" fuente="../../../Global_Imgs/PrensasHP/HP10000.png" id="foto4" alt="HP10000" />
            </div>
            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
    </div>
</asp:Content>
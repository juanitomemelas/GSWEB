<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Compaginadoras_y_Encuadernadoras_Duplo.aspx.cs" Inherits="WebSanchez2016.es.Equipo.GS_Digital.Compaginadoras_y_Encuadernadoras_Duplo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Compaginadoras y encuadernadoras Duplo - GS Digital - Equipo - Grupo S&aacute;nchez
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
                console.log('entral al timer');
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
            <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoDuplo/DSF6000_Brochure_SP.pdf')" fuente="" src="../../../Global_Imgs/PrensasDuplo/DSF6000.png" id="foto1" alt="DSF6000" />
                
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoDuplo/DC_616_brochure_06.14_SP.pdf')" src="" fuente="../../../Global_Imgs/PrensasDuplo/DC_616.png" id="foto2" alt="DC 616" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoDuplo/600i_Booklet_System_Brochure_0915_SP.PDF')" src="" fuente="../../../Global_Imgs/PrensasDuplo/SISTEMA_600i.png" id="foto3" alt="SISTEMA 600i" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoDuplo/UD_300_Die_Cutter_brochure_03.14_SP.pdf')" src="" fuente="../../../Global_Imgs/PrensasDuplo/UD_300.png" id="foto4" alt="UD 300" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoDuplo/Ultra_100_PRO_Brochure_06.14_SP.pdf')" src="" fuente="../../../Global_Imgs/PrensasDuplo/ULTRA_100.png" id="foto5" alt="ULTRA 100" />
            </div>

            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Dobladoras_y_Ecuadernadoras_Baum.aspx.cs" Inherits="WebSanchez2016.es.Equipo.GS_Digital.Dobladoras_y_Ecuadernadoras_Baum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Dobladoras y encuadernadoras Baum - GS Digital - Equipo - Grupo S&aacute;nchez
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
            <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoBaum/BAUM-20.pdf')" fuente="" src="../../../Global_Imgs/PrensasBaum/B20.png" id="foto1" alt="BAUM 20" />
                
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoBaum/Baum-32.pdf')" src="" fuente="../../../Global_Imgs/PrensasBaum/B32.png" id="foto2" alt="BAUM 32" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../../Archivos/Descargas/equipoBaum/BAUM-714XLT.pdf')" src="" fuente="../../../Global_Imgs/PrensasBaum/714XLT.png" id="foto3" alt="BAUM 714XLT" />
            </div>
            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
    </div>
</asp:Content>
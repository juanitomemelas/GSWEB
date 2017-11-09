<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Prensas_Offset_Komori.aspx.cs" Inherits="WebSanchez2016.es.Equipo.Prensas_Offset_Komori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Prensas offset Komori - Equipo - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <script src="../../Content/jquery-1.12.1.min.js" type="text/javascript"></script>
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
            <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoKomori/ENTHRONE.pdf')" fuente="" src="../../Global_Imgs/PrensasKomori/ENTHRONE.png" id="foto1" alt="Enthrone" />

            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoKomori/LITHRONE_A37.pdf')" src="" fuente="../../Global_Imgs/PrensasKomori/LITHRONE_A37.png" id="foto2" alt="LITHRONE A37" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoKomori/LITHRONE_G40.pdf')" src="" fuente="../../Global_Imgs/PrensasKomori/LITHRONE_G40.png" id="foto3" alt="LITHRONE G40" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoKomori/LITHRONE S29_SX29.pdf')" src="" fuente="../../Global_Imgs/PrensasKomori/LITHRONE_S29_LSX29.png" id="foto4" alt="LITHRONE S29 LSX29" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoKomori/LITHRONE_S40SP.pdf')" src="" fuente="../../Global_Imgs/PrensasKomori/LITHRONE_S40SP.png" id="foto5" alt="LITHRONE S40SP" />
            </div>

            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
    </div>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="CTPs_Termicos_Kodak.aspx.cs" Inherits="WebSanchez2016.es.Equipo.CTPs_Termicos_Kodak" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    CTPs térmicos Kodak - Equipo - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
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
            <!--onclick="window.open('')" -->
            <img class="estiloMano" onclick="window.open('../Archivos/Descargas/termicosKodak/MagnusQ800.pdf')" fuente="" src="../../Global_Imgs/PrensasKodak/MAGNUS_800.png" id="foto1" alt="MAGNUS 800" />
                
            </div>
            <div>
                <img class="estiloMano"  onclick="window.open('../Archivos/Descargas/termicosKodak/TrendsetteQ400.pdf')" src="" fuente="../../Global_Imgs/PrensasKodak/TS-400.png" id="foto2" alt="TS 400" />
            </div>
            <div>
                <img class="estiloMano"  onclick="window.open('../Archivos/Descargas/termicosKodak/TSQ800.pdf')" src="" fuente="../../Global_Imgs/PrensasKodak/TS-800.png" id="foto3" alt="TS 800" />
            </div>
            <div>
                <img class="estiloMano"  onclick="window.open('../Archivos/Descargas/termicosKodak/TrendsetterNEWS.pdf')" src="" fuente="../../Global_Imgs/PrensasKodak/TS_NEWS.png" id="foto4" alt="TS NEWS" />
            </div>
            <div>
                <img class="estiloMano"  onclick="window.open('../Archivos/Descargas/termicosKodak/TSQ1600.pdf')" src="" fuente="../../Global_Imgs/PrensasKodak/TS1600.png" id="foto5" alt="TS1600" />
            </div>

            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
    </div>
</asp:Content>
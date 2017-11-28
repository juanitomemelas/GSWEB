<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Suajadoras_y_Dobladoras_Brausse.aspx.cs" Inherits="WebSanchez2016.es.Equipo.Suajadoras_y_Dobladoras_Brausse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Suajadoras y dobladoras Brausse - Equipo - Grupo S&aacute;nchez
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
            <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoBrausse/Foil_Stamper_1050FCi.pdf')" fuente="" src="../../Global_Imgs/PrensasBrausse/1050FCI.png" id="foto1" alt="" />
                
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoBrausse/Blanking_Machine%201060ER.pdf')" src="" fuente="../../Global_Imgs/PrensasBrausse/1060ER.png" id="foto2" alt="" />
            </div>
            <div>
                <img class="estiloMano" onclick="window.open('../Archivos/Descargas/equipoBrausse/1100.pdf')" src="" fuente="../../Global_Imgs/PrensasBrausse/1100.png" id="foto3" alt="" />
            </div>
            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
    </div>
</asp:Content>
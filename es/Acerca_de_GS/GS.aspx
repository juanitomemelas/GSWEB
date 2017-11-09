<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="GS.aspx.cs" Inherits="WebSanchez2016.es.Acerca_de_GS.A" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Quién es GS - Acerca de GS - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="../../Content/jquery-1.12.1.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            var currentIndex = 0;
            var items = $('.container div');
            var itemAmt = items.length;
            var tiempo_fade = 1000;

            function cycleItems() {
                var item = $('.container div').eq(currentIndex);

                items.hide();
                /*if (currentIndex > 0) {
                    $('.container div').eq(currentIndex - 1).fadeOut(tiempo_fade);
                    //item.fadeIn(tiempo_fade);
                }
                else {
                    item.fadeIn(tiempo_fade);
                }*/

                item.fadeIn(tiempo_fade);
            }

            $('.next').click(function () {
                currentIndex += 1;
                if (currentIndex > itemAmt - 1) {
                    currentIndex = 0;
                }
                cycleItems();
            });


            $('.prev').click(function () {
                currentIndex -= 1;
                if (currentIndex < 0) {
                    currentIndex = itemAmt - 1;
                }
                cycleItems();
            });

            cycleItems();
        });
    </script>

    <div class="AcercaDeGS" id="divAcercaDeGS" runat="server">
        <div class="Presentacion">
            <div class="container">
                <div style="display: inline-block;">
                    <img src="../../Global_Imgs/Presentacion/Es/D01.png" alt="D01" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D02.png" alt="D02" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D03.png" alt="D03" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D04.png" alt="D04" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D05.png" alt="D05" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D06.png" alt="D06" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D07.png" alt="D07" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D08.png" alt="D08" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D09.png" alt="D09" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D10.png" alt="D10" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D11.png" alt="D11" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D12.png" alt="D12" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D13.png" alt="D13" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/Es/D14.png" alt="D14" />
                </div>
            </div>

            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
</asp:Content>
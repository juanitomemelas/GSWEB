<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="GS_1.aspx.cs" Inherits="WebSanchez2016.es.Acerca_de_GS.GS_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Quién es GS - Acerca de GS - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="../../Content/jquery-1.12.1.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
            var currentIndex = 0, items = $('.container div'), itemAmt = items.length;

            function cycleItems() {
                //alert(currentIndex);
                var item = $('.container div').eq(currentIndex);
                items.hide();
                //item.css('display', 'inline-block');
                item.fadeIn();
            }

            /*var autoSlide = setInterval(function () {
            currentIndex += 1;
            if (currentIndex > itemAmt - 1) {
            currentIndex = 0;
            }
            cycleItems();
            }, 3000);*/

            function initTimer() {
                autoSlide = setInterval(function () {

                    //alert("currentIndex en initTimer:" + currentIndex);
                    currentIndex += 1;
                    if (currentIndex > itemAmt - 1) {
                        currentIndex = 0;
                    }
                    cycleItems();
                }, 3000);
            }

            /*$('.next').click(function () {
            clearInterval(autoSlide);
            currentIndex += 1;
            if (currentIndex > itemAmt - 1) {
            currentIndex = 0;
            }
            cycleItems();
            });
            */

            $('.next').click(function () {
                //alert("next >>>>");
                clearInterval(autoSlide);
                currentIndex += 1;
                if (currentIndex > itemAmt - 1) {
                    currentIndex = 0;
                }
                cycleItems();
                initTimer();
            });


            /*$('.prev').click(function () {
            clearInterval(autoSlide);
            currentIndex -= 1;
            if (currentIndex < 0) {
            currentIndex = itemAmt - 1;
            }
            cycleItems();
            });*/

            $('.prev').click(function () {
                clearInterval(autoSlide);
                currentIndex -= 1;
                if (currentIndex < 0) {
                    currentIndex = itemAmt - 1;
                }
                cycleItems();
                initTimer();
            });


            initTimer();
        });
    </script>

    <div class="AcercaDeGS" id="divAcercaDeGS" runat="server">
        <div class="Presentacion">
            <div class="container">
                <div style="display: inline-block;">
                    <img src="../../Global_Imgs/Presentacion/D01.png" alt="D01" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D02.png" alt="D02" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D03.png" alt="D03" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D04.png" alt="D04" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D05.png" alt="D05" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D06.png" alt="D06" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D07.png" alt="D07" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D08.png" alt="D08" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D09.png" alt="D09" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D10.png" alt="D10" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D11.png" alt="D11" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D12.png" alt="D12" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D13.png" alt="D13" />
                </div>
                <div>
                    <img src="../../Global_Imgs/Presentacion/D14.png" alt="D14" />
                </div>
            </div>

            <a href="#" class="next" title="Siguiente"></a>
            <a href="#" class="prev" title="Anterior"></a>
        </div>
    </div>
</asp:Content>
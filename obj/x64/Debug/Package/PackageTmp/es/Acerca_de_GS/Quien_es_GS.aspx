<%@ Page Title="" Language="C#" MasterPageFile="~/es/Es_Master.Master" AutoEventWireup="true" CodeBehind="Quien_es_GS.aspx.cs" Inherits="WebSanchez2016.es.Acerca_de_GS.Quien_es_GS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Quién es GS - Acerca de GS - Grupo S&aacute;nchez
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="../../Content/jquery-1.12.1.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var slides, timer;

            //Crea un objeto con informaciÃ³n de los slides
            slides = $('#slider .slidesContainer > .slide');

            //Desplaza el contenedor hacia la direcciÃ³n definida
            //@direction = [left,right]
            function sliderScroll(direction) {

            //Calcula la posiciÃ³n actual del contenedor
            position = $('#slider').scrollLeft();

            //Calcula la anchura total menos el Ãºltimo slide.
            //Se usa para calcular cuando el scroll llega al final.
            totalWidth = (slides.length * slides[0].offsetWidth) - slides[0].offsetWidth

            //Se comprueba la variable direction para hacer el scroll hacia izquierda o derecha
            switch (direction) {
            case 'right': //Derecha
            if (position + slides[0].offsetWidth > totalWidth) { //Si la siguiente posiciÃ³n se sale del contenedor, vuelve al principio.
            $('#slider:not(:animated)').animate({ scrollLeft: 0 }, 1000);
            } else { //Si no es el final, suma a la posiciÃ³n actual la anchura del slide.
            $('#slider:not(:animated)').animate({ scrollLeft: position + slides[0].offsetWidth }, 1000);
            }
            break;

            case 'left': //Izquierda
            if (position - slides[0].offsetWidth < 0) { //Si la siguiente posiciÃ³n se sale del contenedor, vuelve al final.
            $('#slider:not(:animated)').animate({ scrollLeft: totalWidth }, 1000);
            } else { //Si no es el final, resta a la posiciÃ³n actual la anchura del slide.
            $('#slider:not(:animated)').animate({ scrollLeft: position - slides[0].offsetWidth }, 1000);
            }
            break;
            }

            }

            //FunciÃ³n que crea el temporizador
            function initTimer() {
            timer = setInterval(function () { sliderScroll('right'); }, 10000);
            }


            //Asigna el ancho total de los slides al contenedor
            //La anchura total se obtiene multiplicando la medida de un slide por el nÃºmero de slides)
            $('#slider .slidesContainer').css('width', slides[0].offsetWidth * slides.length);


            //Click en el botÃ³n "next"
            $('.next').click(function () {
            clearInterval(timer); //Desactiva el temporizador
            sliderScroll('right'); //Mueve el scroll a la derecha
            initTimer(); //Vuelve a activar el temporizador
            return false;
            });

            //Click en el botÃ³n "prev"
            $('.prev').click(function () {
            clearInterval(timer); //Desactiva el temporizador
            sliderScroll('left'); //Mueve el scroll a la izquierda
            initTimer(); //Vuelve a activar el temporizador
            return false;
            });


            //Inicia el temporizador
            initTimer();

        });
    </script>

    <div class="AcercaDeGS" id="divAcercaDeGS" runat="server">
        <h3>Acerca de Grupo Sánchez</h3>

        <div class="sliderContainer">
            <a href="#siguiente" class="next" title="Siguiente"></a>
            <a href="#anterior" class="prev" title="Anterior"></a>

            <div id="slider">
                <div class="slidesContainer">
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D01.png" alt="D01" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D02.png" alt="D02" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D03.png" alt="D03" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D04.png" alt="D04" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D05.png" alt="D05" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D06.png" alt="D06" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D07.png" alt="D07" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D08.png" alt="D08" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D09.png" alt="D09" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D10.png" alt="D10" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D11.png" alt="D11" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D12.png" alt="D12" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D13.png" alt="D13" />
                    </div>
                    <div class="slide">
                        <img src="../../Global_Imgs/Presentacion/D14.png" alt="D14" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

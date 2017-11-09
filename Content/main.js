function mainMenu() {
    // MOSTRANDO Y OCULTANDO MENU
    $('#button-menu').click(function () {
        if ($('#button-menu').attr('class') == 'fa fa-bars') {
            $('.navegacion').css({ 'width': '100%', 'background': 'rgba(0,0,0,.5)' }); // Mostramos al fondo transparente
            $('#button-menu').removeClass('fa fa-bars').addClass('fa fa-close'); // Agregamos el icono X
            $('.navegacion .menu').css({ 'left': '0px' }); // Mostramos el menu
			$('#buscador').addClass('lupagris');
			$('#buscador').prop('disabled', true);
        } else {
            $('.navegacion').css({ 'width': '0%', 'background': 'rgba(0,0,0,.0)' }); // Ocultamos el fonto transparente
            $('#button-menu').removeClass('fa fa-close').addClass('fa fa-bars'); // Agregamos el icono del Menu
            $('.navegacion .submenu').css({ 'left': '-320px' }); // Ocultamos los submenus
            $('.navegacion .menu').css({ 'left': '-320px' }); // Ocultamos el Menu

	$('#buscador').prop('disabled', false);
        }
    });

    // MOSTRANDO SUBMENU
    $('.navegacion .menu > .item-submenu a').not('.item-subsubmenu a').click(function () {

        var positionMenu = $(this).parent().attr('menu'); // Buscamos el valor del atributo menu y lo guardamos en una variable
        $('.item-submenu[menu=' + positionMenu + '] .submenu').css({ 'left': '0px' }); // Mostramos El submenu correspondiente

    });

    // OCULTANDO SUBMENU
    $('.navegacion .submenu li.go-back').click(function () {

        $(this).parent().css({ 'left': '-320px' }); // Ocultamos el submenu

    });

    // MOSTRANDO SUB-SUBMENU
    $('.navegacion .menu > .item-submenu > .submenu .item-subsubmenu a').click(function () {

        var positionMenu = $(this).parent().attr('menu'); // Buscamos el valor del atributo menu y lo guardamos en una variable
        $('.item-subsubmenu[menu=' + positionMenu + '] .subsubmenu').css({ 'left': '0px' }); // Mostramos El sub-submenu correspondiente

    });

    // OCULTANDO SUB-SUBMENU
    $('.navegacion .subsubmenu li.go-back').click(function () {

        $(this).parent().css({ 'left': '-320px' }); // Ocultamos el sub-submenu

    });

    $('#buscador').keyup(function (e) {
        if (e.keyCode == 13) {
            $('#buscador').blur();
            $('#gsc-i-id1').val($('#buscador').val());
            $(".gsc-search-button input").click();
            $('#buscador').val('');
            $('#buscador').attr('data-placeholder', 'Busqueda de Google');
        }
    });
	}

$(function () {
    $("#campo-ticket").select2({
        placeholder: "Pesquisar por título",
        ajax: {
            url: "/ticket/obtertodosparaselect2",
            dataType: "json",
            type: 'GET',
            data: function (params) {
                ticketTitulo = params.term,
                ticketId = params.id;
            },
            results: function (data, page) {
                return {results: data.Results};
            }
        }
    });
    $("#campo-ticket").change(function () {
        var ticketID = $('#campo-ticket').select2('da   ta').assign(ticketId);
        var ticketTitulo = $('#campo-ticket').find(':selected').text();
        alert("Título do Ticket: " + ticketTitulo + 
                "\nID do Ticket: " + ticketID);
//        $.ajax({
//            url: "/usuario/login",
//            method: "post",
//            data: {
//                ticket: ticket,
//                tituloTicket: ticketTitulo
//            },
//            success: function (data, textStatus, jqXHR) {
//            },
//            error: function (jqXHR, textStatus, errorThrown) {
//
//            }
//        });

        //window.location.replace("teste");

    });

});
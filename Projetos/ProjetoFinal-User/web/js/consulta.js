$(function () {
    $("#campo-ticket").select2({
        placeholder: "Pesquisar por título",
        ajax: {
            url: "/ticket/obtertodosparaselect2",
            dataType: "json"
        }
    });
    $("#campo-ticket").change(function () {
<<<<<<< HEAD
        var ticketID = $('#campo-ticket').find(':selected').text();
        ticketID = ticketID.split("[")[1].split("]")[0];
        window.location.replace("/externo/ticket?id=" + ticketID);
=======
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

>>>>>>> 66ab45333ae8fa42db66b4be1e58ff194b258b30
    });

});
$(function () {
    $("#campo-ticket").select2({
        placeholder: "Pesquisar por título",
        ajax: {
            url: "/ticket/obtertodosparaselect2",
            dataType: "json"
        }
    });
    $("#campo-ticket").change(function () {
        var ticketID = $('#campo-ticket').find(':selected').text();
        ticketID = ticketID.split("[")[1].split("]")[0];
        window.location.replace("/interno/ticket?id=" + ticketID);
    });
});
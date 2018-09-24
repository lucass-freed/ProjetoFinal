$(function () {
    $("#campo-ticket").select2({
        language: {
            "noResults": function () {
                return "Nenhum resultado encontrado.";
            }
        },
        placeholder: "Pesquisar por título",
        ajax: {
            url: "/ticket/obtertodosparaselect2",
            dataType: "json"
        }
    })
            .on('select2-open', function () {
                var requireHeight = 600;
                var viewportBottom = $(window).scrollTop() + $(window).height();
                if (viewportBottom < requireHeight) {
                    var marginBottom = requireHeight - viewportBottom;
                    $(".aLwrElmntOrCntntWrppr").css("marginBottom", marginBottom + "px");
                    $('html, body').animate({
                        scrollTop: $("#campo-ticket").offset().top - 10
                    }, 1000);
                }
            });
    $("#campo-ticket").change(function () {
        var ticketID = $('#campo-ticket').find(':selected').text();
        ticketID = ticketID.split("[")[1].split("]")[0];
        window.location.replace("/externo/ticket?id=" + ticketID);
    });
});
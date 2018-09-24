

$(function () {
    $('#tags').select2({
        language: {
            "noResults": function () {
                return "Nenhum resultado encontrado.";
            }
        },
        placeholder: "Selectionar Tags",
        ajax: {
            url: "/tags/obtertodosparaselect2",
            dataType: "json"
        }
    });

    $("#btn-cadastrar").on("click", function () {
        $.ajax({
            url: "/externo/chamado/store",
            method: "post",
            data: {
                tags: $("#tags").val()
            }
        });
    });

});
var validator;

$(function () {
    validator = $("#chamado").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            titulo: {
                required: true,
                minlength: 5,
                maxlength: 150
            },
            "tags[]": {
                required: true
            },
            descricao: {
                required: true,
                minlength: 10,
                maxlength: 250
            }
        },
        messages: {
            titulo: {
                required: "Este campo é obrigatório.",
                minlength: "Título deve conter no mínimo {0} caracteres.",
                maxlength: "Título deve conter no máximo {0} caracteres."
            },
            "tags[]": {
                required: "*"
            },
            descricao: {
                required: "Este campo é obrigatório.",
                minlength: "Descrição deve conter no mínimo {0} caracteres.",
                maxlength: "Descrição deve conter no máximo {0} caracteres."
            }
        }
    });
    $("#chamado").on('submit', function (e) {
        if ($("#chamado").valid() === false) {
            e.preventDefault();
        }
    });

});


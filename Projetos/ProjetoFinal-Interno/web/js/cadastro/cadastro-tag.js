$(function () {
    $("#cadastro").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            inputTitulo: {
                required: true,
                minlength: 5,
                maxlength: 100
            },
            selectCriticidade: {
                required: true
            }
        },
        messages: {
            inputTitulo: {
                required: "Este campo é obrigatório.",
                minlength: "Nome deve conter no mínimo {0} caracteres.",
                maxlength: "Nome deve conter no máximo {0} caracteres."
            },
            selectCriticidade: {
                required: "Este campo é obrigatório."
            }
        }
    });
    $("#cadastro").on('submit', function (e) {
        if ($("#cadastro").valid() === false) {
            e.preventDefault();
        }
    });

});
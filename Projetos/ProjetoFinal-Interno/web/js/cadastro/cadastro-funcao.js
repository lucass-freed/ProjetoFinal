$(function () {
    $("#cadastro").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            inputNome: {
                required: true,
                minlength: 4,
                maxlength: 50
            },
            inputSetor: {
                required: true,
                minlength: 4,
                maxlength: 50
            },
            selectTipo: {
                required: true
            },
            textareaDescricao: {
                required: false,
                minlength: 15,
                maxlength: 200
            }
        },
        messages: {
            inputNome: {
                required: "Este campo é obrigatório.",
                minlength: "Nome deve conter no mínimo {0} caracteres.",
                maxlength: "Nome deve conter no máximo {0} caracteres."
            },
            inputSetor: {
                required: "Este campo é obrigatório.",
                lettersonly: true,
                minlength: "Setor deve conter no mínimo {0} caracteres.",
                maxlength: "Setor deve conter no máximo {0} caracteres."
            },
            selectTipo: {
                required: "Este campo é obrigatório."
            },
            textareaDescricao: {
                minlength: "Descrição deve conter no mínimo {0} caracteres.",
                maxlength: "Descrição deve conter no máximo {0} caracteres."
            }
        }
    });
    $("#cadastro").on('submit', function (e) {
        if ($("#cadastro").valid() === false) {
            e.preventDefault();
        }
    });

});
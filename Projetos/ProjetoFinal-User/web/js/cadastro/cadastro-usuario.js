$(function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
        return this.optional(element) || /^[a-z]+$/i.test(value);
    }, "Insira somente letras.");
});

$(function () {
    validator = $("#cadastro").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            inputUsuario: {
                required: true,
                minlength: 4,
                maxlength: 50
            },
            inputSenha: {
                required: true,
                minlength: 8,
                maxlength: 100
            },
            inputNomeCompleto: {
                required: true,
                minlength: 4,
                maxlength: 100
            },
            inputCPF: {
                required: true,
                minlength: 14
            },
            inputDataNascimento: {
                required: true,
                minlength: 10
            },
            inputTelefone: {
                required: true,
                minlength: 15
            },
            inputEmail: {
                required: true,
                email: true,
                maxlength: 100
            },
            comboBoxFuncao: {
                required: true
            }
        },
        messages: {
            inputUsuario: {
                required: "Este campo é obrigatório.",
                minlength: "Usuário deve conter no mínimo {0} caracteres.",
                maxlength: "Usuário deve conter no máximo {0} caracteres."
            },
            inputSenha: {
                required: "Este campo é obrigatório.",
                lettersonly: true,
                minlength: "Senha deve conter no mínimo {0} caracteres.",
                maxlength: "Senha deve conter no máximo {0} caracteres."
            },
            inputNomeCompleto: {
                required: "Este campo é obrigatório.",
                minlength: "Nome deve conter no mínimo {0} caracteres.",
                maxlength: "Nome deve conter no máximo {0} caracteres."
            },
            inputCPF: {
                required: "Este campo é obrigatório.",
                minlength: "Insira um CPF válido.",
                maxlength: "Insira um CPF válido."
            },
            inputDataNascimento: {
                required: "Este campo é obrigatório.",
                minlength: "Insira uma data válida."
            },
            inputTelefone: {
                required: "Este campo é obrigatório.",
                minlength: "Telefone Celular inválido."
            },
            inputEmail: {
                required: "Este campo é obrigatório.",
                email: "Insira um e-mail válido."
            },
            comboBoxFuncao: {
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

$(document).ready(function () {
    $("#inputBasicCPF").mask('000.000.000-00');
    $("#inputBasicDataNascimento").mask('00/00/0000');
    $("#inputBasicTelefone").mask('(00) 00000-0000');
});
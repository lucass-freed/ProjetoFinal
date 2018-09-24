$(function () {
    jQuery.validator.addMethod("lettersonly", function (value, element) {
        return this.optional(element) || /^[a-z]+$/i.test(value);
    }, "Insira somente letras.");
});

var validator;

$(function () {
    validator = $("#editar").validate({
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
            inputNomeCompleto: {
                required: true,
                minlength: 4,
                maxlength: 100
            },
            inputCPF: {
                required: true,
                minlength: 14,
                maxlength: 14
            },
            inputDataNascimento: {
                required: true,
                minlength: 10
            },
            inputCTPS: {
                required: true,
                minlength: 7
            },
            inputPIS: {
                required: true,
                minlength: 14
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
            },
            inputDataAdmissao: {
                required: true,
                minlength: 10
            },
            inputCEP: {
                required: true,
                minlength: 9
            },
            inputCidade: {
                required: true,
                maxlength: 50
            },
            selectUf: {
                required: true,
                lettersonly: true
            },
            inputBairro: {
                required: true,
                maxlength: 50
            },
            inputLogradouro: {
                required: true,
                maxlength: 100
            },
            inputNumero: {
                required: true,
                maxlength: 30
            },
            inputComplemento: {
                required: true,
                maxlength: 50
            }
        },
        messages: {
            inputUsuario: {
                required: "Este campo é obrigatório.",
                minlength: "Usuário deve conter no mínimo {0} caracteres.",
                maxlength: "Usuário deve conter no máximo {0} caracteres."
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
            inputCTPS: {
                required: "Este campo é obrigatório.",
                minlength: "CTPS inválido."
            },
            inputPIS: {
                required: "Este campo é obrigatório.",
                minlength: "PIS inválido."
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
            },
            inputDataAdmissao: {
                required: "Este campo é obrigatório.",
                minlength: "Insira uma data válida."
            },
            inputCEP: {
                required: "Este campo é obrigatório.",
                minlength: "CEP inválido."
            },
            inputCidade: {
                required: "Este campo é obrigatório.",
                maxlength: "Cidade deve conter no máximo {0} caracteres."
            },
            selectUf: {
                required: "Este campo é obrigatório."
            },
            inputBairro: {
                required: "Este campo é obrigatório.",
                maxlength: "Bairro deve conter no máximo {0} caracteres."
            },
            inputLogradouro: {
                required: "Este campo é obrigatório.",
                maxlength: "Logradouro deve conter no máximo {0} caracteres."
            },
            inputNumero: {
                required: "Este campo é obrigatório.",
                maxlength: "Número deve conter no máximo {0} caracteres."
            },
            inputComplemento: {
                required: "Este campo é obrigatório.",
                maxlength: "Complemento deve conter no máximo {0} caracteres."
            }
        }
    });
    $("#editar").on('submit', function (e) {
        if ($("#editar").valid() === false) {
            e.preventDefault();
        }
    });

});

$(function () {
    $("#inputBasicCEP").on("focusout", function () {
        processarCep();
    });
    function processarCep() {
        $cep = $("#inputBasicCEP").val();
        $.ajax({
            url: "https://viacep.com.br/ws/" + $cep + "/json/",
            method: "get",
            success: function (data) {
                $("#inputBasicLogradouro").val(data.logradouro);
                $("#inputBasicCidade").val(data.localidade);
                $("#inputBasicBairro").val(data.bairro);
                $("#selectBasicUf").val(data.uf.toString().toLowerCase());
                validator.form();
            }
        });
    }
});

$(document).ready(function () {
    $("#inputBasicCEP").mask('00000-000');
    $("#inputBasicCPF").mask('000.000.000-00');
    $("#inputBasicDataNascimento").mask('00/00/0000');
    $("#inputBasicDataAdmissao").mask('00/00/0000');
    $("#inputBasicTelefone").mask('(00) 00000-0000');
    $("#inputBasicCTPS").mask('0000000');
    $("#inputBasicPIS").mask('000.00000.00-0');
});

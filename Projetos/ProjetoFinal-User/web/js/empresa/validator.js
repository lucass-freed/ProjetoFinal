var validator;

$(function () {
    validator = $("#alterar-empresa").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            inputBasicCNPJ: {
                required: true,
                minlength: 18
            },
            nomeFantasia: {
                required: true,
                minlength: 3,
                maxlength: 200
            },
            razaoSocial: {
                required: true,
                minlength: 10,
                maxlength: 200
            },
            email: {
                required: true,
                minlength: 5,
                maxlength: 100,
                email: true
            },
            telefone: {
                required: true,
                minlength: 14
            },
            logradouro: {
                required: true,
                minlength: 5,
                maxlength: 100
            },
            inscricaoEstadual: {
                required: true,
                minlength: 15
            },
            numero: {
                required: true,
                minlength: 1,
                maxlength: 20
            },
            complemento: {
                required: false,
                minlength: 1,
                maxlength: 50
            },
            bairro: {
                required: true,
                minlength: 3,
                maxlength: 100
            },
            cep: {
                required: true,
                minlength: 9
            },
            cidade: {
                required: true,
                minlength: 3,
                maxlength: 50
            },
            uf: {
                required: true
            },
            dataAtivacao: {
                required: true,
                minlength: 10
            },
            dataExpiracao: {
                required: true,
                minlength: 10
            }
        },
        messages: {
            inputCNPJ: {
                required: "Este campo é obrigatório",
                minlength: "CNPJ inválido."
            },
            nomeFantasia: {
                required: "Este campo é obrigatório",
                maxlength: "Nome Fantasia deve conter no máximo {0} caracteres."
            },
            razaoSocial: {
                required: "Este campo é obrigatório",
                minlength: "Razão Social deve conter no mínimo {0} caracteres.",
                maxlength: "Razão Social deve conter no máximo {0} caracteres."
            },
            email: {
                required: "Este campo é obrigatório",
                email: "Insira um e-mail válido.",
                maxlength: "E-mail deve conter no máximo {0} caracteres."
            },
            telefone: {
                required: "Este campo é obrigatório",
                minlength: "Telefone inválido."
            },
            logradouro: {
                required: "Este campo é obrigatório",
                maxlength: "Logradouro deve conter no máximo {0} caracteres."
            },
            inscricaoEstadual: {
                required: "Este campo é obrigatório",
                minlength: "Inscrição Estadual inválida."
            },
            numero: {
                required: "Este campo é obrigatório",
                maxlength: "Número deve conter no máximo {0} caracteres."
            },
            complemento: {
                required: "Este campo é obrigatório",
                maxlength: "Complemento deve conter no máximo {0} caracteres."
            },
            bairro: {
                required: "Este campo é obrigatório",
                maxlength: "Bairro deve conter no máximo {0} caracteres."
            },
            cep: {
                required: "Este campo é obrigatório",
                minlength: "CEP inválido."
            },
            cidade: {
                required: "Este campo é obrigatório",
                maxlength: "Cidade deve conter no máximo {0} caracteres."
            },
            uf: {
                required: "Este campo é obrigatório",
            },
            dataAtivacao: {
                required: "Este campo é obrigatório",
                minlength: "Insira uma data válida."
            },
            dataExpiracao: {
                required: "Este campo é obrigatório",
                minlength: "Insira uma data válida."
            },

        }
    });
    $("#alterar-empresa").on('submit', function (e) {
        if ($("#alterar-empresa").valid() === false) {
            e.preventDefault();
        }
    });
});
$(document).ready(function () {
    $("#inputBasicDataAtivacao").mask('00/00/0000');
    $("#inputBasicDataExpiracao").mask('00/00/0000');
    $("#inputBasicCNPJ").mask('00.000.000/0000-00');
    $("#inputBasicCEP").mask('00000-000');
    $("#inputPhone").mask('(00) 0000-0000');
    $("#inputBasicIE").mask('000.000.000.000');
});
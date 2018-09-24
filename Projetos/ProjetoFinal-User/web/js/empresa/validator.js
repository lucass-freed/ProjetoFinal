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
            inputBasicNomeFantasia: {
                required: true,
                maxlength: 200
            },
            inputBasicRazaoSocial: {
                required: true,
                maxlength: 200
            },
            inputBasicEmail: {
                required: true,
                maxlength: 100,
                email: true
            },
            inputPhone: {
                required: true,
                minlength: 14
            },
            inputBasicLogradouro: {
                required: true,
                maxlength: 100
            },
            inputBasicIE: {
                required: true,
                minlength: 15
            },
            inputBasicNumero: {
                required: true,
                maxlength: 20
            },
            inputBasicComplemento: {
                required: true,
                maxlength: 50
            },
            inputBasicBairro: {
                required: true,
                maxlength: 100
            },
            inputBasicCEP: {
                required: true,
                minlength: 9
            },
            inputBasicCidade: {
                required: true,
                maxlength: 50
            },
            selectBasicUf: {
                required: true
            },
            inputBasicDataAtivacao: {
                required: true,
                minlength: 10
            },
            inputBasicDataExpiracao: {
                required: true,
                minlength: 10
            }
        },
        messages: {
            inputCNPJ: {
                required: "Este campo é obrigatório",
                minlength: "CNPJ inválido."
            },
            inputNomeFantasia: {
                required: "Este campo é obrigatório",
                maxlength: "Nome Fantasia deve conter no máximo {0} caracteres."
            },
            inputRazaoSocial: {
                required: "Este campo é obrigatório",
                maxlength: "Razão Social deve conter no máximo {0} caracteres."
            },
            inputEmail: {
                required: "Este campo é obrigatório",
                email: "Insira um e-mail válido.",
                maxlength: "E-mail deve conter no máximo {0} caracteres."
            },
            inputPhone: {
                required: "Este campo é obrigatório",
                minlength: "Telefone inválido."
            },
            inputLogradouro: {
                required: "Este campo é obrigatório",
                maxlength: "Logradouro deve conter no máximo {0} caracteres."
            },
            inputIE: {
                required: "Este campo é obrigatório",
                minlength: "Inscrição Estadual inválida."
            },
            inputNumero: {
                required: "Este campo é obrigatório",
                maxlength: "Número deve conter no máximo {0} caracteres."
            },
            inputComplemento: {
                required: "Este campo é obrigatório",
                maxlength: "Complemento deve conter no máximo {0} caracteres."
            },
            inputBairro: {
                required: "Este campo é obrigatório",
                maxlength: "Bairro deve conter no máximo {0} caracteres."
            },
            inputCEP: {
                required: "Este campo é obrigatório",
                minlength: "CEP inválido."
            },
            inputCidade: {
                required: "Este campo é obrigatório",
                maxlength: "Cidade deve conter no máximo {0} caracteres."
            },
            selectUf: {
                required: "Este campo é obrigatório",
            },
            inputDataAtivacao: {
                required: "Este campo é obrigatório",
                minlength: "Insira uma data válida."
            },
            inputDataExpiracao: {
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

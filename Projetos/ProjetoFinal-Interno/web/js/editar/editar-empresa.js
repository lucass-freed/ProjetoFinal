var validator;

$(function () {
    validator = $("#editar").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            inputCNPJ: {
                required: true,
                minlength: 18
            },
            inputNomeFantasia: {
                required: true,
                maxlength: 200
            },
            inputRazaoSocial: {
                required: true,
                maxlength: 200
            },
            inputEmail: {
                required: true,
                maxlength: 100,
                email: true
            },
            inputPhone: {
                required: true,
                minlength: 14
            },
            inputLogradouro: {
                required: true,
                maxlength: 100
            },
            inputIE: {
                required: true,
                minlength: 15
            },
            inputNumero: {
                required: true,
                maxlength: 20
            },
            inputComplemento: {
                required: true,
                maxlength: 50
            },
            inputBairro: {
                required: true,
                maxlength: 100
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
                required: true
            },
            inputDataAtivacao: {
                required: true,
                minlength: 10
            },
            inputDataExpiracao: {
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
    $("#editar").on('submit', function (e) {
        if ($("#editar").valid() === false) {
            e.preventDefault();
        }
    });
});
$(function () {
    $("#inputBasicCNPJ").on("focusout", function () {
        processarCep();
    });
    function processarCep() {
        var cnpj = $("#inputBasicCNPJ").val();
        var i = 0;
        while ((i = cnpj.indexOf(".", i)) !== -1) {
            cnpj = cnpj.replace(".", "");
        }
        while ((i = cnpj.indexOf("/", i)) !== -1) {
            cnpj = cnpj.replace("/", "");
        }
        while ((i = cnpj.indexOf("-", i)) !== -1) {
            cnpj = cnpj.replace("-", "");
        }
        $cnpj = cnpj;

        $.ajax({
            url: "https://www.receitaws.com.br/v1/cnpj/" + $cnpj,
            method: "get",
            dataType: 'jsonp',
            complete: function (xhr) {
                response = xhr.responseJSON;
                if (response.status === 'OK') {
                    $("#inputBasicNomeFantasia").val(response.fantasia);
                    $("#inputBasicEmail").val(response.email);
                    $("#inputBasicPhone").val(response.telefone);
                    $("#inputBasicLogradouro").val(response.logradouro);
                    $("#inputBasicNumero").val(response.numero);
                    $("#inputBasicComplemento").val(response.complemento);
                    $("#inputBasicBairro").val(response.bairro);
                    $("#inputBasicCEP").val(response.cep.replace(".", ""));
                    $("#inputBasicCidade").val(response.municipio);
                    $("#selectBasicUf").val(response.uf.toString().toLowerCase());
                    $("#inputBasicDataAtivacao").val(response.abertura);
                    validator.form();
                }
            }
        });
    }
});

$(document).ready(function () {
    $("#inputBasicDataAtivacao").mask('00/00/0000');
    $("#inputBasicDataExpiracao").mask('00/00/0000');
    $("#inputBasicCNPJ").mask('00.000.000/0000-00');
    $("#inputBasicCEP").mask('00000-000');
    $("#inputBasicPhone").mask('(00) 0000-0000');
    $("#inputBasicIE").mask('000.000.000.000');
});
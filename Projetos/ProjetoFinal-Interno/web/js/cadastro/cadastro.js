
$(function () {
    $("#cadastro").validate({
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
            inputNome: {
                required: true,
                minlength: 4,
                maxlength: 100
            },
            inputSobrenome: {
                required: true,
                minlength: 4,
                maxlength: 100
            },
            inputCPF: {
                required: true,
                minlength: 14,
                maxlength: 14
            },
            inputCTPS: {
                required: true,
                maxlength: 100
            },
            inputPIS: {
                required: true,
                maxlength: 100
            },
            inputEmail: {
                required: true,
                email: true
            },
            comboBoxFuncao: {
                required: true
            }
        },
        messages: {
            inputUsuario: {
                required: "Este campo é obrigatório",
                minlength: "Usuario deve conter no mínimo {4} caracteres",
                maxlength: "Usuario deve conter no máximo {50} caracteres"
            },
            inputSenha: {
                required: "Este campo é obrigatório",
                minlength: "Senha deve conter no mínimo {8} caracteres",
                maxlength: "Senha deve conter no máximo {50} caracteres"
            },
            email: {
                required: "Este campo é obrigatório",
                email: "Insira um e-mail válido"
            },
            inputCPF: {
               required: "Este campo é obrigatório",
               minlength: "Insira um CPF válido"
            }
        }
    });
    $("#cadastro").on('submit', function (e) {

        if ($("#cadastro").valid() === false) {
            e.preventDefault();
        } else {
            alert('asdaspdas');
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
                $("#inputBasicUF").val(data.uf);

            }
        });
    }
});
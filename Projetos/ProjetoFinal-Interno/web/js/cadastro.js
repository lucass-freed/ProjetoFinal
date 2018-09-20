/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
//Validação com o jQuery Validator
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
                required: "Nome é obrigatório",
                minlength: "Usuario deve conter no mínimo {0} caracteres",
                maxlength: "Usuario deve conter no máximo {50} caracteres"
            },
            inputSenha: {
                required: "Idade é obrigatório",
                minlength: "Senha deve conter no mínimo {8} caracteres",
                maxlength: "Senha deve conter no máximo {50} caracteres"
            },
            email: {
                required: "E-mail é obrigatório",
                email: "Insira um e-mail válido"
            }
        }
    });
    $("#cadastro").on('submit', function (e) {

        if ($("#cadastro").valid() == false) {
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



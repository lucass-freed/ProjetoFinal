//$(function () {
//    validator = $("#editar").validate({
//        errorClass: "text-danger border-danger",
//        errorElementClass: 'text-danger border-danger',
//        validElementClass: 'text-success border-success',
//        validClass: "text-success border-success",
//        rules: {
//            oldPassword: {
//                required: true,
//                minlength: 4,
//                maxlength: 50
//            },
//            password: {
//                required: true,
//                minlength: 4,
//                maxlength: 100
//            },
//            password2: {
//                required: true,
//                minlength: 14,
//                maxlength: 14
//            }
//        },
//        messages: {
//            inputUsuario: {
//                required: "Este campo é obrigatório.",
//                minlength: "Usuário deve conter no mínimo {0} caracteres.",
//                maxlength: "Usuário deve conter no máximo {0} caracteres."
//            },
//            inputNomeCompleto: {
//                required: "Este campo é obrigatório.",
//                minlength: "Nome deve conter no mínimo {0} caracteres.",
//                maxlength: "Nome deve conter no máximo {0} caracteres."
//            },
//            inputCPF: {
//                required: "Este campo é obrigatório.",
//                minlength: "Insira um CPF válido.",
//                maxlength: "Insira um CPF válido."
//            }
//        }
//    });
//});
$('#form-change-password').on('submit', function (e) {
    debugger;
    var oldPassword = document.getElementById("inputOldPassword").value;
    var password = document.getElementById("inputPassword").value;
    var password2 = document.getElementById("inputPassword2").value;
    e.preventDefault();
    $.ajax({
        url: "/usuario/change-password",
        method: "post",
        data: {
            senha: oldPassword
        },
        success: function (data, textStatus, jqXHR) {
            var resultado = JSON.parse(data);
            if (resultado.status !== 'sucesso') {
                $(function () {
                    new PNotify({
                        title: 'Ocorreu um erro!',
                        text: 'Senha incorreta!',
                        type: 'error'
                    });
                });
                e.preventDefault();
            } else if (isSenhaInvalida(password) === true) {
                $(function () {
                    new PNotify({
                        title: 'Ocorreu um erro!',
                        text: 'A nova senha é inválida!\n\
                        Ela conter os seguintes requisitos:\n\
                         • Mínimo de 8 caracteres;\n\
                         • Máximo de 50 caracteres;\n\
                         • Conter letras.',
                        type: 'error'
                    });
                });
                e.preventDefault();
            } else if (password !== password2.toString()) {
                $(function () {
                    new PNotify({
                        title: 'Ocorreu um erro!',
                        text: 'Os campos da nova senha são diferentes!',
                        type: 'error'
                    });
                });
                e.preventDefault();
            } else {
                $('#form-change-password').unbind('submit').submit();
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
            e.preventDefault();
        }
    });
    function isSenhaInvalida(senha) {
        if (senha.length < 8 || senha.length > 50 || isContainsLetterSenha(senha) === false) {
            return true;
        }
        return false;
    }

    function isContainsLetterSenha(senha) {
        senha = senha.toLowerCase();
        var letras = "abcdefghyjklmnopqrstuvwxyz";
        for (i = 0; i < senha.length; i++) {
            if (letras.indexOf(senha.charAt(i), 0) !== -1) {
                return true;
            }
        }
        return false;
    }

});
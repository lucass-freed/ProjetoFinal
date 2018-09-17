function validarLogin() {
    var oldPassword = document.getElementById("inputOldPassword").value;
    var password = document.getElementById("inputPassword").value;
    var password2 = document.getElementById("inputPassword2").value;
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
                event.preventDefault();
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
                event.preventDefault();
            } else if (password.toString() !== password2.toString()) {
                $(function () {
                    new PNotify({
                        title: 'Ocorreu um erro!',
                        text: 'Os campos da nova senha são diferentes!',
                        type: 'error'
                    });
                });
                event.preventDefault();
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {
        }
    });
}

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
        if (letras.indexOf(senha.charAt(i), 0) != -1) {
            return true;
        }
    }
    return false;
}


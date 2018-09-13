function validarLogin() {
    event.preventDefault();

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
            } else if (isSenhaInvalida(password) === true) {
                new PNotify({
                    title: 'Ocorreu um erro!',
                    text: 'A senha informada é inválida!\n\
                        A mesma deve conter os seguintes requisitos:\n\
                         • Mínimo de 8 caracteres;\n\
                         • Máximo de 50 caracteres;\n\
                         • Conter letras.',
                    type: 'error'
                });
            } else if (password.toString() !== password2.toString()) {
                new PNotify({
                    title: 'Ocorreu um erro!',
                    text: 'Os campos da nova senha são diferentes!',
                    type: 'error'
                });
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {

        }
    });
}

function isSenhaInvalida(senha) {
    if (senha.length < 8 || senha.length > 50 || isContainsLetterSenha() === false) {
        return true;
    }
    return false;
}

function isContainsLetterSenha(senha) {
    var i;
    for (i = 0; i < senha.length; i++) {
        if (Chart.isDigit(senha.charAt(i)) === true) {
            return true;
        }
        return false;
    }
}

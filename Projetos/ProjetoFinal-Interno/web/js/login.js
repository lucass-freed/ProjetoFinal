function validarLogin() {
    event.preventDefault();

    var usuario = document.getElementById("campo-usuario").value;
    var password = document.getElementById("campo-senha").value;
    $.ajax({
        url: "/usuario/login",
        method: "post",
        data: {
            login: usuario,
            senha: password
        },
        success: function (data, textStatus, jqXHR) {
            var resultado = JSON.parse(data);
            if (resultado.status === 'sucesso') {
                window.location.replace("/interno");
            } else {
                $(function () {
                    new PNotify({
                        title: 'Ocorreu um erro!',
                        text: 'Usuário ou senha inválidos.',
                        type: 'error'
                    });
                });
            }
        },
        error: function (jqXHR, textStatus, errorThrown) {

        }
    });
}
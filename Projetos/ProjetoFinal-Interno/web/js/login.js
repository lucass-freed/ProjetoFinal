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

var googleUser = {};
var startApp = function () {
    gapi.load('auth2', function () {
        // Retrieve the singleton for the GoogleAuth library and set up the client.
        auth2 = gapi.auth2.init({
            client_id: '460600231135-dlvff56etr329n2kdlrtbon4c4beb81t.apps.googleusercontent.com',
            cookiepolicy: 'single_host_origin',
            // Request scopes in addition to 'profile' and 'email'
            //scope: 'additional_scope'
        });
        attachSignin(document.getElementById('botao-logar'));
    });
};

function attachSignin(element) {
    console.log(element.id);
    auth2.attachClickHandler(element, {},
            function (googleUser) {
                document.getElementById('name').innerText = "Logado com: " + googleUser.getBasicProfile().getName();
            }, function (error) {
        alert(JSON.stringify(error, undefined, 2));
    });
}
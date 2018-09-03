function validarLogin() {
    event.preventDefault();
    if (isSenhaInvalida()) {
        event.preventDefault();
    }
}

function isSenhaInvalida() {
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
            alert(data);
        },
        error: function (jqXHR, textStatus, errorThrown) {
            
        }
    });


}

function apagarClasse(id, classeCor) {
    document.getElementById(id).classList.remove(classeCor);
}

function adicionarClasse(id, classeCor) {
    document.getElementById(id).classList.add(classeCor);
}

function apagarElementoSeExiste(id) {
    if (document.contains(document.getElementById(id))) {
        document.getElementById(id).remove();
    }
}

function gerarSpan(id, texto, idPai) {
    var span = document.createElement("span");
    span.id = id;
    span.textContent = texto;
    span.classList.add("text-danger");
    span.classList.add("font-weight-bold");
    document.getElementById(idPai).appendChild(span);
}
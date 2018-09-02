function validarLogin() {
    event.preventDefault();
    if (isUsuarioInvalido() || isSenhaInvalida()) {
        event.preventDefault();
    }
}

function isUsuarioInvalido() {
    var usuario = document.getElementById("campo-usuario").value;
    var i;
    for (i = 0; i < (new UsuarioDAO().obterUsuarios().size()); i++) {
        return (new UsuarioDAO.obterUsuarios().get(i).getUsuario().equals(usuario)
                || new UsuarioDAO.obterUsuarios().get(i).getEmail().equals(usuario)
                );
    }
}

function isSenhaInvalida() {
    var usuario = new UsuarioDAO().obterUsuarioPeloUsuarioOuEmail(document.getElementById("campo-usuario").value);
    var senha = document.getElementById("campo-senha").value;
    return (new SHA512Metodos().compararSenha(usuario.getSenha(), senha));
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
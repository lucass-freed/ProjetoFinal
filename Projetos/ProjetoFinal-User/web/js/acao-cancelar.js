$(document).ready(function () {

    $("#botao-cancelar").click(function () {
        $.ajax({
            url: "/externo/empresa/buscar",
            success: function (result) {
                $("#inputBasicCNPJ").val(result.cnpj);
                $("#inputBasicRazaoSocial").val(result.razaoSocial);
                $("#inputBasicNomeFantasia").val(result.nomeFantasia);
                $("#inputBasicIE").val(result.inscricaoEstadual);
                $("#inputBasicEmail").val(result.email);
                $("#inputPhone").val(result.telefone);
                $("#inputBasicLogradouro").val(result.logradouro);
                $("#inputBasicNumero").val(result.numero);
                $("#inputBasicComplemento").val(result.complemento);
                $("#inputBasicBairro").val(result.bairro);
                $("#inputBasicCEP").val(result.cep);
                $("#inputBasicCidade").val(result.cidade);

            }
        });
    });


});

var hidden = false;
function cancelar() {
    hidden = !hidden;
    if(hidden) {
        document.getElementById('botao-alterar').style.visibility = 'visible';
        document.getElementById('botao-cancelar').style.visibility = 'hidden';
        document.getElementById('botao-salvar').style.visibility = 'hidden';
    } else {
        document.getElementById('botao-cancelar').style.visibility = 'visible';
    }
}


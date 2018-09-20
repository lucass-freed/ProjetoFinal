$(document).ready(function () {

    $("#botao-cancelar").click(function () {
        $.ajax({
            url: "/empresa-externo/buscaempresa?id=1",
            success: function (result) {
                $("#inputBasicCNPJ").val(result.cnpj);
                $("#inputBasicRazaoSocial").val(result.razao_social);
                $("#inputBasicNomeFantasia").val(result.nome_fantasia);
                $("#inputBasicIE").val(result.inscrcao_estadual);
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


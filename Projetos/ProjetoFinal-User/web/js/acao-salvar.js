$("#botao-salvar").on("click", function () {
    $.ajax({
        url: "/externo/empresa/editar",
        method: "post",
        data: {
            "cnpj": $("#inputBasicCNPJ").val(),
            "razaoSocial": $("#inputBasicRazaoSocial").val(),
            "id": $("#inputBasicId").val(),
            "nomeFantasia": $("inputNomeFantasia").val(),
            "inscricaoEstadual": $("inputIE").val(),
            "email": $("inputBasicEmail").val(),
            "telefone": $("inputPhone").val(),
            "logradouro": $("inputBasicLogradouro").val(),
            "numero": $("inputBasicNumero").val(),
            "complemento": $("inputBasicComplemento").val(),
            "bairro": $("inputBasicBairro").val(),
            "cep": $("inputBasicCEP").val(),
            "uf": $("selectBasicUf").val(),
            "uf": $("selectBasicUf").val(),
        },
        success: function (result) {
            

        }
    });
});



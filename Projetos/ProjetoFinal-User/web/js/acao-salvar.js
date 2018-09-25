$("#botao-salvar").on("click", function () {
    $.ajax({
        url: "/externo/empresa/store",
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



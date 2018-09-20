$("#botao-salvar").on("click", function () {
        $.ajax({
            url: "/empresa-externo/buscaempresa?id=1",
            method: "post",
            data: {
                "cnpj": $("#inputBasicCNPJ").val(),
                "razao_social": $("#inputBasicRazaoSocial").val(),
                "id": $("#inputBasicId").val()
            },
            success: function (result) {


            }
        });
    });



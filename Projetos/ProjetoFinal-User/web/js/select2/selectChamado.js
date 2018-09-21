

$(function () {
    $('.tags-select').select2({

    });

    $("#btn-cadastrar").on("click", function () {
        $.ajax({
            url: "/cadastro",
            method: "post",
            data: {
                tags: $("#tags").val()
            }
        });
    }); 

});
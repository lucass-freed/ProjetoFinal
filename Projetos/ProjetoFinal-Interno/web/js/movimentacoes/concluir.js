$(function () {
    $("#formConcluir").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            resolucao: {
                required: true
            }
        },
        messages: {
            resolucao: {
                required: "Este campo é obrigatório."
            }
        }
    });
    $("#formConcluir").on('submit', function (e) {
        if ($("#formConcluir").valid() === false) {
            e.preventDefault();
        }
    });

});
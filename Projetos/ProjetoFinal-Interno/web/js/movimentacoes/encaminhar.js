$(function () {
    $("#formEncaminhar").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            inputDestinos: {
                required: true
            }
        },
        messages: {
            inputDestinos: {
                required: "Este campo é obrigatório."
            }
        }
    });
    $("#formEncaminhar").on('submit', function (e) {
        if ($("#formEncaminhar").valid() === false) {
            e.preventDefault();
        }
    });
});
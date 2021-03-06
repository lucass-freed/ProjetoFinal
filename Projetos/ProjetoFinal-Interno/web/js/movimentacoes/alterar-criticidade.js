$(function () {
    $("#formAlterarCriticidade").validate({
        errorClass: "text-danger border-danger",
        errorElementClass: 'text-danger border-danger',
        validElementClass: 'text-success border-success',
        validClass: "text-success border-success",
        rules: {
            criticidade: {
                required: true
            }
        },
        messages: {
            criticidade: {
                required: "Este campo é obrigatório."
            }
        }
    });
    $("#formAlterarCriticidade").on('submit', function (e) {
        if ($("#formAlterarCriticidade").valid() === false) {
            e.preventDefault();
        }
    });

});
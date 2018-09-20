$(function () {
    $("#campo-ticket").select2({
        ajax: {
            url: "/ticket/obtertodosparaselect2",
            dataType: "json"
        }
    });
});
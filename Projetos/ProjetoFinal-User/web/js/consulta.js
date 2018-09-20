$(function () {
    $("#campo-ticket").select2({
        placeholder: "Pesquisar por título",
        ajax: {
            url: "/ticket/obtertodosparaselect2",
            dataType: "json",
            data: function (params) {
                return {
                    q: params.term // search term
                };
            },
        }
    });
    $("#campo-ticket").change(function () {
        
        var e = document.getElementById("select2-campo-ticket-results");
        var strUser = e.options[e.selectedIndex].value;
        alert(strUser);
        alert("dsas");

        //window.location.replace("teste");

    });

});
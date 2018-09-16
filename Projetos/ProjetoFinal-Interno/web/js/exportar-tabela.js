$("#exportar").click(function (e) {
    e.preventDefault();
    $("#tabela ").table2excel({
        exclude: ".excludeThisClass",
        name: "Worksheet Name",
        fileext: ".xls",
        filename: "Lista de Tickets", //do not include extension,
        exclude_links: true
    });
})
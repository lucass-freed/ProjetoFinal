var idTable;
var tipo;

$(function () {
    var table = $("#tabela-empresas").DataTable({
        "ajax": "/empresas/obtertodosparadatatable",
        "language": {
            "sEmptyTable": "Nenhum registro encontrado",
            "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
            "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
            "sInfoFiltered": "(Filtrados de _MAX_ registros)",
            "sInfoPostFix": "",
            "sInfoThousands": ".",
            "sLengthMenu": "_MENU_ resultados por página",
            "sLoadingRecords": "Carregando...",
            "sProcessing": "Processando...",
            "sZeroRecords": "Nenhum registro encontrado",
            "sSearch": "Pesquisar",
            "oPaginate": {
                "sNext": "Próximo",
                "sPrevious": "Anterior",
                "sFirst": "Primeiro",
                "sLast": "Último"
            },
            "oAria": {
                "sSortAscending": ": Ordenar colunas de forma ascendente",
                "sSortDescending": ": Ordenar colunas de forma descendente"
            },
            "select": {
                "rows": {
                    "_": "Selecionado %d linhas",
                    "0": "Nenhuma linha selecionada",
                    "1": "Selecionado 1 linha"
                }
            }
        },

        /*"language": {
         "url": "/libs/datatable/Portuguese-Brasil.lang"
         },*/
        "columns": [
            {"data": "id"},
            {"data": "nomeFantasia"},
            {"data": "razaoSocial"},
            {"data": "cnpj"},
            {"data": "inscricaoEstadual"},
            {"data": "email"},
            {"data": "telefone"},
            {"data": "cidade"},
            {"data": null,
                "render": function (data, type, row) {
                    return "<a class='btn btn-info' href='/empresa/editar?id=" + data.id + "'><i class='icon wb-edit'></i></a>  " +
                            "<a class='btn btn-danger' href='javascript:void(0)' data-toggle='modal' data-target='#examplePositionSidebar'><i class='icon wb-trash'></i></a>";
                }
            }
        ]
    });
    $('#tabela-empresas').on('click', 'tr', function () {
        var data = table.row(this).data();
        idTable = data["id"];
    });

});

excluirEmpresa = function () {
    window.location.replace("/empresa/excluir?id=" + idTable);
}
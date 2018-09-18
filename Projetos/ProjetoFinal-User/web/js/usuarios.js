$(function () {
    $("#tabela-usuarios").DataTable({
        responsive: {
            details: false
        },
        "ajax": "/usuarios/obtertodosparadatatable",
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
            {"data": "usuario"},
            {"data": "funcao"},
            {"data": "email"},
            {"data": "data_nascimento"},
            {"data": "telefone"},
            {"data": "empresa"},
            {"data": "tipo",
                "render": function (data, type, row) {
                    if (row.tipo === 'Master') {
                        return "<span class='badge badge-warning font-size-14'>Master<span>";
                    } else {
                        return "<span class='badge badge-primary font-size-14'>Normal<span>";
                    }
                }
            },
            {"data": null,
                "render": function (data) {
                    return "<a class='btn btn-info' href='/interno/ticket?id=" + data.id + "'><i class='icon wb-edit'></i></a>  " +
                            "<a class='btn btn-danger' href='javascript:void(0)' data-toggle='modal' data-target='#examplePositionSidebar'><i class='icon wb-trash'></i></a>";
                }
            }
        ]
    });

});
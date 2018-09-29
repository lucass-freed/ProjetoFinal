var idTable;
var tipo;

$(function () {
    var table = $("#tabela-tags").DataTable({
        "ajax": "/interno/tags/obtertodosparadatatable",
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
            {"data": "titulo"},
            {"data": "criticidade",
                "render": function (data, type, row) {
                    if (row.criticidade.toString().toLowerCase() === 'baixa') {
                        return "<span class='badge badge-success font-size-14'><i class='wb-sort-des'> Baixa<span>";
                    } else if (row.criticidade.toString().toLowerCase() === 'media') {
                        return "<span class='badge badge-primary font-size-14'><i class='wb-stats-bars'></i> Média<span>";
                    } else if (row.criticidade.toString().toLowerCase() === 'alta') {
                        return "<span class='badge badge-warning font-size-14'><i class='wb-dashboard'></i> Alta<span>";
                    } else {
                        return "<span class='badge badge-danger font-size-14'><i class='wb-warning'></i> Altíssima<span>";
                    }
                }
            },
            {"data": null,
                "render": function (data, type, row) {
                    return "<a class='btn btn-info' href='/interno/tag/editar?id=" + data.id + "'><i class='icon wb-edit'></i></a>  " +
                            "<button type='button' class='btn btn-danger' id='exampleWarningConfirm'><i class='icon wb-trash'></i></button>";
                }
            }
        ]
    });
    $('#tabela-tags').on('click', 'tr', function () {
        var data = table.row(this).data();
        idTable = data["id"];
        tipo = data["tipo"];
    });
});

excluirTag = function () {
    window.location.replace("/interno/tag/excluir?id=" + idTable);
}

(function () {
    ('#exampleWarningConfirm').on("click", function () {
        swal({
            title: "Tem certeza??",
            text: "Essa alteração não poderá ser desfeita!!",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn-warning",
            confirmButtonText: 'Sim, remover.',
            closeOnConfirm: false
                    //closeOnCancel: false
        }, function () {
            swal("Deleted!", "Your imaginary file has been deleted!", "success");
        });
    });
});
    
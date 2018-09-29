var tabela;
var idTable;
var tipo;

$(function () {
    tabel = $("#tabela-tags").DataTable({
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
                            "<a href='javascript:(0)' class='btn btn-danger excluirtest'><i class='icon wb-trash'></i></a>";
                }
            }
        ]
    });
    $('#tabela-tags').on('click', 'tr', function () {
        var data = tabela.row(this).data();
        idTable = data["id"];
        tipo = data["tipo"];
    });
    
    $('#tabela-tags').on('click', '.excluirtest', function () {
        console.log(idTable);
        $.ajax({
            url: '/interno/tag/excluir',
            method: 'POST',
            data: {
                id: idTable
            },
            success: function (data) {
                tabela.ajax.reload();
            }
        });
        return false;
    });
});

excluirTag = function () {
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });

    swalWithBootstrapButtons({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Yes, delete it!',
        cancelButtonText: 'No, cancel!',
        reverseButtons: true
    }).then((result) => {
        window.location.replace("/interno/tag/excluir?id=" + idTable);
        if (result.value) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Tag removida com sucesso!',
                    'success'
                    );
            $.ajax({
                url: '/interno/tag/excluir',
                method: 'POST',
                data: {
                    id: idTable
                },
                success: function (data) {
                    tabela.ajax.reload();
                }
            });
        } else if (
                // Read more about handling dismissals
                result.dismiss === swal.DismissReason.cancel
                ) {
        }
    });
};
var id;

$(function () {
    var table = $("#tabela-usuarios").DataTable({
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
                        return "<span class='badge badge-primary font-size-14'>Regular<span>";
                    }
                }
            },
            {"data": null,
                "render": function (data) {
                    return "<a class='btn btn-info' href='/usuario/editar?id=" + data.id + "'><i class='icon wb-edit'></i></a>  " +
                            "<a class='btn btn-danger' href='javascript:void(0)' data-toggle='modal' data-target='#examplePositionSidebar'><i class='icon wb-trash'></i></a>";
                }
            }
        ]
    });

    $('#tabela-usuarios').on('click', 'tr', function () {
        var data = table.row(this).data();
        id = data["id"];
        $.ajax({
            url: "/usuario/id",
            method: "post",
            data: null,
            success: function (data, textStatus, jqXHR) {
                var resultado = JSON.parse(data);
                if (id != resultado)
                    $('#idDaTabela').text(id);
                else {
                    $(function () {
                    new PNotify({
                        title: 'Ocorreu um erro!',
                        text: 'Você não pode excluir o seu usuário.',
                        type: 'error'
                    });
                });
                }
                    

            },
            error: function (jqXHR, textStatus, errorThrown) {

            }
        });
    });

});

excluir = function () {
    window.location.replace("/usuario/excluir?id=" + id);
}
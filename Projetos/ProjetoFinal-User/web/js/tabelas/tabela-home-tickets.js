$(function () {
    $("#tabela-home-tickets").DataTable({
        "ajax": "/home/tickets/obtertodosparadatatable",
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
            {"data": "dataAbertura"},
            {"data": "dataEncerramento"},
            {"data": "criticidade",
                "render": function (data, type, row) {
                    if (row.criticidade === 'Baixa') {
                        return "<span class='badge badge-success font-size-14'>Baixa<span>";
                    } else if (row.criticidade === 'Média') {
                        return "<span class='badge badge-primary font-size-14'>Média<span>";
                    } else if (row.criticidade === 'Alta') {
                        return "<span class='badge badge-warning font-size-14'>Alta<span>";
                    } else {
                        return "<span class='badge badge-danger font-size-14'>Altíssima<span>";
                    }
                }
            },
            {"data": "situacao",
                "render": function (data, type, row) {
                    if (row.situacao === 'Aberto') {
                        return "<span class='badge badge-danger font-size-14'>Aberto<span>";
                    } else if (row.situacao === 'Em Andamento') {
                        return "<span class='badge badge-primary font-size-14'>Em Andamento<span>";
                    } else {
                        return "<span class='badge badge-success font-size-14'>Concluído<span>";
                    }
                }
            }
        ]
    });
});
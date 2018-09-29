$(function () {
    var table = $("#tabela-ticket").DataTable({
        responsive: {
            breakpoints: [
                {name: 'bigdesktop', width: Infinity},
                {name: 'meddesktop', width: 1480},
                {name: 'smalldesktop', width: 1280},
                {name: 'medium', width: 1188},
                {name: 'tabletl', width: 1024},
                {name: 'btwtabllandp', width: 848},
                {name: 'tabletp', width: 768},
                {name: 'mobilel', width: 480},
                {name: 'mobilep', width: 320}
            ]
        },
        "ajax": "/ticket/obtertodosparadatatable",
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
            {"data": "empresa"},
            {"data": "titulo"},
            {"data": "dataAbertura"},
            {"data": "dataEncerramento"},
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
            {"data": "situacao",
                "render": function (data, type, row) {
                    if (row.situacao.toString().toLowerCase() === 'aberto') {
                        return "<span class='badge badge-danger font-size-14'><i class='wb-alert-circle'></i> Pendente<span>";
                    } else if (row.situacao.toString().toLowerCase() === 'em andamento') {
                        return "<span class='badge badge-primary font-size-14'><i class='wb-minus-circle'></i> Em Andamento<span>";
                    } else {
                        return "<span class='badge badge-success font-size-14'><i class='wb-check'></i> Concluído<span>";
                    }
                }
            },
            {"data": null,
                "render": function (data) {
                    return "<a class='btn btn-info' href='/interno/ticket?id=" + data.id + "'><i class='wb-info-circle'></i> Consultar</a>";
                }
            }
        ]
    });
});
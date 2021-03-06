function getUrlParams(prop) {
    var params = {};
    var search = decodeURIComponent(window.location.href.slice(window.location.href.indexOf('?') + 1));
    var definitions = search.split('&');

    definitions.forEach(function (val, key) {
        var parts = val.split('=', 2);
        params[ parts[ 0 ] ] = parts[ 1 ];
    });

    return (prop && prop in params) ? params[ prop ] : params;
}

$(function () {
    $("#ultimas-movimentacoes").DataTable({
        "ajax": {
            "url": "/ticketsLog/obtertodosparadatatablefromticket",
            "method": "get",
            "data": {
                idDoTicket: getUrlParams("id")
            },
        },
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
            {"data": "movimentador"},
            {"data": "dataMovimentacao"},
            {"data": "obs"}
        ]
    });
});
var opcao;
$(document).ready(function () {
    $("input:radio[name=inputDestinos]").click(function () {
        opcao = ($(this).val());
    });
});

function alterarCriticidade(id) {
    $('#formAlterarCriticidade').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/interno/ticket/alterarCriticidade?id=" + id,
        method: 'POST',
        data: {
            'id': $('#Basicid').val(),
            'idColaborador': $('#BasicidColaborador').val(),
            'criticidade': $('#BasicCriticidade').val()
        },
        success: function (data) {
            $('#alterarCriticidade').modal('hide');
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Criticidade alterada com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/ticket?id=" + id;
            });
        }
    });
};

function concluirTicket(id) {
    $('#formConcluir').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/interno/ticket/concluir?id=" + id,
        method: 'POST',
        data: {
            'ticketID': $('#ticketBasicID').val(),
            'resolucao': $('#BasicResolucao').val()
        },
        success: function (data) {
            $('#modalConclusao').modal('hide');
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Ticket concluído com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/ticket?id=" + id;
            });
        }
    });
};
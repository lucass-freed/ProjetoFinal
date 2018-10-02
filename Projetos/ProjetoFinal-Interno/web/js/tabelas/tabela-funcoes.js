var idTable;
var table;
var tipo;

$(function () {
    table = $("#tabela-funcoes").DataTable({
        "ajax": "/interno/funcoes/obtertodosparadatatable",
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
            {"data": "nome"},
            {"data": "setor"},
            {"data": "tipo",
                "render": function (data, type, row) {
                    if (row.tipo.toString().toLowerCase() === 'interna') {
                        return "<span class='badge badge-warning font-size-14'>Interna<span>";
                    } else {
                        return "<span class='badge badge-primary font-size-14'>Externa<span>";
                    }
                }
            },
            {"data": null,
                "render": function (data, type, row) {
                    return "<a class='btn btn-info' href='/interno/funcoes/editar?id=" + data.id + "'><i class='icon wb-edit'></i></a>  " +
                            "<a class='btn btn-danger' href='javascript:excluirFuncao();'><i class='icon wb-trash'></i></a>";
                }
            }
        ]
    });
    $('#tabela-funcoes').on('click', 'tr', function () {
        var data = table.row(this).data();
        idTable = data["id"];
        tipo = data["tipo"];
    });
});

excluirFuncao = function () {
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });

    swalWithBootstrapButtons({
        title: 'Você tem certeza??',
        text: "Esta ação não pode ser desfeita!",
        type: 'warning',
        showCancelButton: true,
        confirmButtonText: 'Sim, excluir função!',
        cancelButtonText: 'Não, cancelar!',
        reverseButtons: true
    }).then((result) => {
        if (result.value) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Função removida com sucesso!',
                    'success'
                    );
            $.ajax({
                url: '/interno/funcoes/excluir?id=' + idTable,
                success: function (data) {
                    table.ajax.reload();
                }
            });
        };
    });
};

function cadastrarFuncao(id) {
    $('#cadastro').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/interno/funcoes/store?id=" + id,
        method: 'POST',
        data: {
            'inputNome': $('#inputBasicNome').val(),
            'inputSetor': $('#inputBasicSetor').val(),
            'selectTipo': $('#selectBasicTipo').val(),
            'textareaDescricao': $('#textareaBasicDescricao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Função cadastrada com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/funcoes";
            });
        }
    });
}
;

function editarFuncao(id) {
    $('#editar').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/interno/funcoes/alterar?id=" + id,
        method: 'POST',
        data: {
            'inputID': $('#inputBasicID').val(),
            'inputNome': $('#inputBasicNome').val(),
            'inputSetor': $('#inputBasicSetor').val(),
            'selectTipo': $('#selectBasicTipo').val(),
            'textareaDescricao': $('#textareaBasicDescricao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Função alterada com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/funcoes";
            });
        }
    });
}
;
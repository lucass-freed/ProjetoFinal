var idTable;
var table;
var tipo;

$(function () {
    table = $("#tabela-empresas").DataTable({
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
                            "<a class='btn btn-danger' href='javascript:excluirEmpresa();'><i class='icon wb-trash'></i></a>";
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
        confirmButtonText: 'Sim, excluir empresa!',
        cancelButtonText: 'Não, cancelar!',
        reverseButtons: true
    }).then((result) => {
        if (result.value) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Empresa removida com sucesso!',
                    'success'
                    );
            $.ajax({
                url: '/empresa/excluir?id=' + idTable,
                success: function (data) {
                    table.ajax.reload();
                }
            });
        };
    });
};

function cadastrarEmpresa(id) {
    $('#cadastro').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/interno/empresa/store?id=" + id,
        method: 'POST',
        data: {
            'inputCNPJ': $('#inputBasicCNPJ').val(),
            'inputNomeFantasia': $('#inputBasicNomeFantasia').val(),
            'inputRazaoSocial': $('#inputBasicRazaoSocial').val(),
            'inputEmail': $('#inputBasicEmail').val(),
            'inputPhone': $('#inputBasicPhone').val(),
            'inputLogradouro': $('#inputBasicLogradouro').val(),
            'inputIE': $('#inputBasicIE').val(),
            'inputNumero': $('#inputBasicNumero').val(),
            'inputComplemento': $('#inputBasicComplemento').val(),
            'inputBairro': $('#inputBasicBairro').val(),
            'inputCEP': $('#inputBasicCEP').val(),
            'inputCidade': $('#inputBasicCidade').val(),
            'selectUf': $('#selectBasicUf').val(),
            'inputDataAtivacao': $('#inputBasicDataAtivacao').val(),
            'inputDataExpiracao': $('#inputBasicDataExpiracao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Empresa cadastrada com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/empresas";
            });
        }
    });
};

function editarEmpresa(id) {
    $('#editar').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/empresa/alterar?id=" + id,
        method: 'POST',
        data: {
            'inputID': $('#inputBasicID').val(),
            'inputCNPJ': $('#inputBasicCNPJ').val(),
            'inputNomeFantasia': $('#inputBasicNomeFantasia').val(),
            'inputRazaoSocial': $('#inputBasicRazaoSocial').val(),
            'inputEmail': $('#inputBasicEmail').val(),
            'inputPhone': $('#inputBasicPhone').val(),
            'inputLogradouro': $('#inputBasicLogradouro').val(),
            'inputIE': $('#inputBasicIE').val(),
            'inputNumero': $('#inputBasicNumero').val(),
            'inputComplemento': $('#inputBasicComplemento').val(),
            'inputBairro': $('#inputBasicBairro').val(),
            'inputCEP': $('#inputBasicCEP').val(),
            'inputCidade': $('#inputBasicCidade').val(),
            'selectUf': $('#selectBasicUf').val(),
            'inputDataAtivacao': $('#inputBasicDataAtivacao').val(),
            'inputDataExpiracao': $('#inputBasicDataExpiracao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Empresa alterada com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/empresas";
            });
        }
    });
};
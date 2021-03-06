var idTable;
var table;
var tipo;

$(function () {
    table = $("#tabela-colaboradores").DataTable({
        "ajax": "/colaborador/obtertodosparadatatable",
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
            {"data": "nome"},
            {"data": "cpf"},
            {"data": "funcao"},
            {"data": "email"},
            {"data": "data_nascimento"},
            {"data": "telefone"},
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
                "render": function (data, type, row) {
                    return "<a class='btn btn-info' href='javascript:verificarEditar();'><i class='icon wb-edit'></i></a>  " +
                            "<a class='btn btn-danger' href='javascript:verificarExcluir();'><i class='icon wb-trash'></i></a>";
                }
            }
        ]
    });
    $('#tabela-colaboradores').on('click', 'tr', function () {
        var data = table.row(this).data();
        idTable = data["id"];
        tipo = data["tipo"];
    });

    verificarEditar = (function () {
        if (tipo === 'Master') {
            const swalWithBootstrapButtons = swal.mixin({
                confirmButtonClass: 'btn btn-success',
                cancelButtonClass: 'btn btn-danger',
                buttonsStyling: false
            });
            swalWithBootstrapButtons(
                    'Ocorreu um erro!',
                    'Você não pode alterar as informações deste colaborador!',
                    'error'
                    );
        } else {
            window.location.replace("/colaborador/editar?id=" + idTable);
        }
    });

    verificarExcluir = (function () {
        const swalWithBootstrapButtons = swal.mixin({
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false
        });
        if (tipo === 'Master') {
            swalWithBootstrapButtons(
                    'Ocorreu um erro!',
                    'Você não pode alterar as excluir este colaborador!',
                    'error'
                    );
        } else {
            swalWithBootstrapButtons({
                title: 'Você tem certeza??',
                text: "Esta ação não pode ser desfeita!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Sim, excluir Colaborador!',
                cancelButtonText: 'Não, cancelar!',
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    swalWithBootstrapButtons(
                            'Sucesso!',
                            'Colaborador removido com sucesso!',
                            'success'
                            ), function (isConfirm) {
                        alert('ok');
                    };
                    $.ajax({
                        url: "/colaborador/excluir?id=" + idTable,
                        success: function (data) {
                            table.ajax.reload();
                        }
                    });
                }
                ;
            });
        }
    });
});

function cadastrarColaborador(id) {
    $('#cadastro').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/interno/cadastro/store?id=" + id,
        method: 'POST',
        data: {
            'inputUsuario': $('#inputBasicUsuario').val(),
            'inputSenha': $('#inputBasicSenha').val(),
            'inputCidade': $('#inputBasicCidade').val(),
            'selectUf': $('#selectBasicUf').val(),
            'inputNomeCompleto': $('#inputBasicNomeCompleto').val(),
            'inputCEP': $('#inputBasicCEP').val(),
            'inputBairro': $('#inputBasicBairro').val(),
            'inputCPF': $('#inputBasicCPF').val(),
            'inputDataNascimento': $('#inputBasicDataNascimento').val(),
            'inputLogradouro': $('#inputBasicLogradouro').val(),
            'inputCTPS': $('#inputBasicCTPS').val(),
            'inputPIS': $('#inputBasicPIS').val(),
            'inputNumero': $('#inputBasicNumero').val(),
            'inputTelefone': $('#inputBasicTelefone').val(),
            'inputEmail': $('#inputBasicEmail').val(),
            'inputComplemento': $('#inputBasicComplemento').val(),
            'comboBoxFuncao': $('#comboBoxBasicFuncao').val(),
            'inputDataAdmissao': $('#inputBasicDataAdmissao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Colaborador cadastrado com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/colaboradores";
            });
        }
    });
};

function editarColaborador(id) {
    $('#editar').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/colaborador/alterar?id=" + id,
        method: 'POST',
        data: {
            'inputID': $('#inputBasicID').val(),
            'inputUsuario': $('#inputBasicUsuario').val(),
            'inputSenha': $('#inputBasicSenha').val(),
            'inputCidade': $('#inputBasicCidade').val(),
            'selectUf': $('#selectBasicUf').val(),
            'inputNomeCompleto': $('#inputBasicNomeCompleto').val(),
            'inputCEP': $('#inputBasicCEP').val(),
            'inputBairro': $('#inputBasicBairro').val(),
            'inputCPF': $('#inputBasicCPF').val(),
            'inputDataNascimento': $('#inputBasicDataNascimento').val(),
            'inputLogradouro': $('#inputBasicLogradouro').val(),
            'inputCTPS': $('#inputBasicCTPS').val(),
            'inputPIS': $('#inputBasicPIS').val(),
            'inputNumero': $('#inputBasicNumero').val(),
            'inputTelefone': $('#inputBasicTelefone').val(),
            'inputEmail': $('#inputBasicEmail').val(),
            'inputComplemento': $('#inputBasicComplemento').val(),
            'comboBoxFuncao': $('#comboBoxBasicFuncao').val(),
            'inputDataAdmissao': $('#inputBasicDataAdmissao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Colaborador alterado com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/interno/colaboradores";
            });
        }
    });
};
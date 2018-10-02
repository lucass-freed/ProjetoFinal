var idTable;
var tipo;

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
                    return "<a class='btn btn-info' href='javascript:verificarEditar()'><i class='icon wb-edit'></i></a>  " +
                            "<a class='btn btn-danger' href='javascript:verificarExcluir()'><i class='icon wb-trash'></i></a>";
                }
            }
        ]
    });

    $('#tabela-usuarios').on('click', 'tr', function () {
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
                    'Você não pode alterar as informações deste usuário!',
                    'error'
                    );
        } else {
            window.location.replace("/externo/usuario/editar?id=" + idTable);
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
                    'Você não pode alterar as excluir este usuário!',
                    'error'
                    );
        } else {
            swalWithBootstrapButtons({
                title: 'Você tem certeza??',
                text: "Esta ação não pode ser desfeita!",
                type: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Sim, excluir Usuário!',
                cancelButtonText: 'Não, cancelar!',
                reverseButtons: true
            }).then((result) => {
                if (result.value) {
                    swalWithBootstrapButtons(
                            'Sucesso!',
                            'Usuário removido com sucesso!',
                            'success'
                            ), function (isConfirm) {
                        alert('ok');
                    };
                    $.ajax({
                        url: "/externo/usuario/excluir?id=" + idTable,
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

function cadastrarUsuario(id) {
    $('#cadastro').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/externo/usuario/store?id=" + id,
        method: 'POST',
        data: {
            'inputUsuario': $('#inputBasicUsuario').val(),
            'inputSenha': $('#inputBasicSenha').val(),
            'inputNomeCompleto': $('#inputBasicNomeCompleto').val(),
            'inputCPF': $('#inputBasicCPF').val(),
            'inputDataNascimento': $('#inputBasicDataNascimento').val(),
            'inputTelefone': $('#inputBasicTelefone').val(),
            'inputEmail': $('#inputBasicEmail').val(),
            'comboBoxFuncao': $('#comboBoxBasicFuncao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Usuário cadastrado com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/externo/usuarios";
            });
        }
    });
};

function editarUsuario(id) {
    $('#editar').submit();
    const swalWithBootstrapButtons = swal.mixin({
        confirmButtonClass: 'btn btn-success',
        cancelButtonClass: 'btn btn-danger',
        buttonsStyling: false
    });
    $.ajax({
        url: "/externo/usuario/alterar?id=" + id,
        method: 'POST',
        data: {
            'inputID': $('#inputBasicID').val(),
            'inputUsuario': $('#inputBasicUsuario').val(),
            'inputSenha': $('#inputBasicSenha').val(),
            'inputIDEmpresa': $('#inputBasicIDEmpresa').val(),
            'inputNomeCompleto': $('#inputBasicNomeCompleto').val(),
            'inputCPF': $('#inputBasicCPF').val(),
            'inputDataNascimento': $('#inputBasicDataNascimento').val(),
            'inputTelefone': $('#inputBasicTelefone').val(),
            'inputEmail': $('#inputBasicEmail').val(),
            'comboBoxFuncao': $('#comboBoxBasicFuncao').val()
        },
        success: function (data) {
            swalWithBootstrapButtons(
                    'Sucesso!',
                    'Usuário alterado com sucesso!',
                    'success'
                    ).then(function () {
                window.location = "/externo/usuarios";
            });
        }
    });
};
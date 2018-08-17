 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.bean;

import br.com.projetofinal.enumTypes.TicketStatusType;

/**
 *
 * @author Alunos
 */
public class TicketBean {
    
    private int id;
    private EmpresaBean empresa;
    private ColaboradorBean colaborador;
    private SazonalidadeBean sazonalidade;
    private TicketStatusType situacao;
    private String titulo;
    private int dataAbertura;
    private String sistemaOperacional;
    private String versaoBanco;
    private String descricao;
    private int dataEncerramento;
    private String procedimentoResolucao;
}

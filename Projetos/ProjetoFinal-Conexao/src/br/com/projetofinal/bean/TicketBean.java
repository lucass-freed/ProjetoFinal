 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.bean;

import br.com.projetofinal.enumTypes.SazonalidadeType;
import br.com.projetofinal.enumTypes.TicketStatusType;

/**
 *
 * @author Alunos
 */
public class TicketBean {
    
    private int id;
    private EmpresaBean empresa;
    private ColaboradorBean colaborador;
    private SazonalidadeType sazonalidade;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public EmpresaBean getEmpresa() {
        return empresa;
    }

    public void setEmpresa(EmpresaBean empresa) {
        this.empresa = empresa;
    }

    public ColaboradorBean getColaborador() {
        return colaborador;
    }

    public void setColaborador(ColaboradorBean colaborador) {
        this.colaborador = colaborador;
    }

    public SazonalidadeType getSazonalidade() {
        return sazonalidade;
    }

    public void setSazonalidade(SazonalidadeType sazonalidade) {
        this.sazonalidade = sazonalidade;
    }

    public TicketStatusType getSituacao() {
        return situacao;
    }

    public void setSituacao(TicketStatusType situacao) {
        this.situacao = situacao;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public int getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(int dataAbertura) {
        this.dataAbertura = dataAbertura;
    }

    public String getSistemaOperacional() {
        return sistemaOperacional;
    }

    public void setSistemaOperacional(String sistemaOperacional) {
        this.sistemaOperacional = sistemaOperacional;
    }

    public String getVersaoBanco() {
        return versaoBanco;
    }

    public void setVersaoBanco(String versaoBanco) {
        this.versaoBanco = versaoBanco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getDataEncerramento() {
        return dataEncerramento;
    }

    public void setDataEncerramento(int dataEncerramento) {
        this.dataEncerramento = dataEncerramento;
    }

    public String getProcedimentoResolucao() {
        return procedimentoResolucao;
    }

    public void setProcedimentoResolucao(String procedimentoResolucao) {
        this.procedimentoResolucao = procedimentoResolucao;
    }
    private TicketStatusType situacao;
    private String titulo;
    private int dataAbertura;
    private String sistemaOperacional;
    private String versaoBanco;
    private String descricao;
    private int dataEncerramento;
    private String procedimentoResolucao;
}

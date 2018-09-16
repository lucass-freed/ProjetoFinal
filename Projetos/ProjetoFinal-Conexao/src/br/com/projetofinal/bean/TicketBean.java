package br.com.projetofinal.bean;

import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import java.sql.Date;

/**
 *
 * @author Matheus Werner
 * @contributor: Michelle de Jesus Rogério Edited on 2018-08-28 visando
 * adequação para retornos corretos no TicketDAO
 */
public class TicketBean {

    private int id;
    private int idEmpresa;
    private int idColaborador;
    private int idSazonalidade;
    private String titulo;
    private Date dataAbertura;
    private String sistemaOperacional;
    private String versaoBanco;
    private String descricao;
    private Date dataEncerramento;
    private String procedimentoResolucao;
    private EnumTicketStatusType status;
    private CriticidadeTypes criticidade;
    private EmpresaBean empresa;

    public CriticidadeTypes getCriticidade() {
        return criticidade;
    }

    public void setCriticidade(CriticidadeTypes criticidade) {
        this.criticidade = criticidade;
    }

    public EnumTicketStatusType getStatus() {
        return status;
    }

    public void setStatus(EnumTicketStatusType status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdEmpresa() {
        return idEmpresa;
    }

    public void setIdEmpresa(int idEmpresa) {
        this.idEmpresa = idEmpresa;
    }

    public int getIdColaborador() {
        return idColaborador;
    }

    public void setIdColaborador(int idColaborador) {
        this.idColaborador = idColaborador;
    }

    public int getIdSazonalidade() {
        return idSazonalidade;
    }

    public void setIdSazonalidade(int idSazonalidade) {
        this.idSazonalidade = idSazonalidade;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Date getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(Date dataAbertura) {
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

    public Date getDataEncerramento() {
        return dataEncerramento;
    }

    public void setDataEncerramento(Date dataEncerramento) {
        this.dataEncerramento = dataEncerramento;
    }

    public String getProcedimentoResolucao() {
        return procedimentoResolucao;
    }

    public void setProcedimentoResolucao(String procedimentoResolucao) {
        this.procedimentoResolucao = procedimentoResolucao;
    }

    public EmpresaBean getEmpresa() {
        return empresa;
    }

    public void setEmpresa(EmpresaBean empresa) {
        this.empresa = empresa;
    }

}

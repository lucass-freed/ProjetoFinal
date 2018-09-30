package br.com.projetofinal.bean;

import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import java.sql.Timestamp;

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
    private int idFuncaoMovimentacao;
    private int idUsuario;

    private String titulo;
    private String sazonalidade;
    private Timestamp dataAbertura;
    private String descricao;
    private Timestamp dataEncerramento;
    private String procedimentoResolucao;
    private EnumTicketStatusType status;
    private CriticidadeTypes criticidade;
    private EmpresaBean empresa;

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }
    
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

    public String getSazonalidade() {
        return sazonalidade;
    }

    public void setSazonalidade(String sazonalidade) {
        this.sazonalidade = sazonalidade;
    }
    
    public int getIdFuncaoMovimentacao() {
        return idFuncaoMovimentacao;
    }

    public void setIdFuncaoMovimentacao(int idFuncaoMovimentacao) {
        this.idFuncaoMovimentacao = idFuncaoMovimentacao;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Timestamp getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(Timestamp dataAbertura) {
        this.dataAbertura = dataAbertura;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Timestamp getDataEncerramento() {
        return dataEncerramento;
    }

    public void setDataEncerramento(Timestamp dataEncerramento) {
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

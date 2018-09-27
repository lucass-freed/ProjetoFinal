package br.com.projetofinal.bean;

import java.sql.Timestamp;

/**
 * @author Michelle de Jesus Rogério
 */
public class TicketLogBean {
    
    private int id, idColaborador;
    private Timestamp dataHoraMovto;
    private String observacao;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdColaborador() {
        return idColaborador;
    }

    public void setIdColaborador(int idColaborador) {
        this.idColaborador = idColaborador;
    }
    
    public Timestamp getDataHoraMovto() {
        return dataHoraMovto;
    }

    public void setDataHoraMovto(Timestamp dataHoraMovto) {
        this.dataHoraMovto = dataHoraMovto;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
}

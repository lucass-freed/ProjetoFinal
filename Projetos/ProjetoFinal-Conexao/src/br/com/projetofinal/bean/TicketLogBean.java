package br.com.projetofinal.bean;

import java.sql.Timestamp;
import org.joda.time.DateTime;

/**
 * @author Michelle de Jesus Rogério
 */
public class TicketLogBean {
    
    private int id, idColaborador, idFuncao;
    private DateTime dataHoraMovto;
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

    public int getIdFuncao() {
        return idFuncao;
    }

    public void setIdFuncao(int idFuncao) {
        this.idFuncao = idFuncao;
    }
    
    public DateTime getDataHoraMovto() {
        return dataHoraMovto;
    }

    public void setDataHoraMovto(DateTime dataHoraMovto) {
        this.dataHoraMovto = dataHoraMovto;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
}

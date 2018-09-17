package br.com.projetofinal.bean;

/**
 * @author Michelle de Jesus Rogério
 */
public class TicketLogBean {
    
    private int id, idColaborador;
    private String dataHoraMovto;
    private String observacao;

    public int getIdColaborador() {
        return idColaborador;
    }

    public void setIdColaborador(int idColaborador) {
        this.idColaborador = idColaborador;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDataHoraMovto() {
        return dataHoraMovto;
    }

    public void setDataHoraMovto(String dataHoraMovto) {
        this.dataHoraMovto = dataHoraMovto;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }
    
}

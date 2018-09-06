package br.com.projetofinal.bean;

/**
 *
 * @author Michelle de Jesus Rogério
 * @date 2018-09-06
 */
public class TicketsTagsBean {

    private int idTickets;
    private int idTags;
    private String tags;

    public int getIdTickets() {
        return idTickets;
    }

    public void setIdTickets(int idTickets) {
        this.idTickets = idTickets;
    }

    public int getIdTags() {
        return idTags;
    }

    public void setIdTags(int idTags) {
        this.idTags = idTags;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

}

package br.com.projetofinal.bean;

/**
 *
 * @author Michelle de Jesus Rogério
 * @date 2018-09-06
 */
public class TicketTagBean {

    private int idTickets;
    private int idTags;
    private TagBean tag;

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

    public TagBean getTag() {
        return tag;
    }

    public void setTag(TagBean tag) {
        this.tag = tag;
    }

}

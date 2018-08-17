package br.com.projetofinal.enumTypes;

/**
 *
 * @author Lucas Rodrigo
 */
public enum TicketStatusType {
    
    ABERTO("Aberto"), FECHADO("Fechado"), PENDENTE("Pendente");
    
    private final String descricao;

    private TicketStatusType(String descricao) {
        this.descricao = descricao;
    }
    
}

package br.com.projetofinal.enumTypes;

/**
 *
 * @author Lucas Rodrigo
 */
public enum EnumTicketStatusType {

    ABERTO("Aberto"),
    EM_ANDAMENTO("Em Andmento"),
    CONCLUIDO("Concluído");

    private final String descricao;

    private EnumTicketStatusType(String descricao) {
        this.descricao = descricao;
    }

    public static EnumTicketStatusType getEnum(String descricao) {
        switch (descricao) {
            case "Aberto":
                return EnumTicketStatusType.ABERTO;
            case "Em Andmento":
                return EnumTicketStatusType.EM_ANDAMENTO;
            default:
                return EnumTicketStatusType.CONCLUIDO;
        }
    }
}

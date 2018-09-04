package br.com.projetofinal.enumTypes;

/**
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 * updated by Michelle de Jesus Rogério inclusão do getEnum
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
            case "Em Andamento":
                return EnumTicketStatusType.EM_ANDAMENTO;
            default:
                return EnumTicketStatusType.CONCLUIDO;
        }
    }
}

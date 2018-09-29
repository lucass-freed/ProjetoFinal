package br.com.projetofinal.enumTypes;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com) edited by Michelle
 * de Jesus Rogério (themicaloo@gmail.com) criação do getEnum
 */
public enum CriticidadeTypes {

    BAIXA("Baixa"),
    MEDIA("Média"),
    ALTA("Alta"),
    ALTISSIMA("Altíssima");

    private final String descricao;

    private CriticidadeTypes(String descricao) {
        this.descricao = descricao;
    }

    public static CriticidadeTypes getEnum(String descricao) {
        switch (descricao.toUpperCase()) {
            case "BAIXA":
                return CriticidadeTypes.BAIXA;
            case "MEDIA":
                return CriticidadeTypes.MEDIA;
            case "ALTA":
                return CriticidadeTypes.ALTA;
            default:
                return CriticidadeTypes.ALTISSIMA;
        }
    }

}

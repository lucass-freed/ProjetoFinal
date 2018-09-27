package br.com.projetofinal.enumTypes;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public enum FuncaoType {

    INTERNA("Interna"),
    EXTERNA("Externa");

    private final String descricao;

    private FuncaoType(String descricao) {
        this.descricao = descricao;
    }

    public static FuncaoType getEnum(String descricao) {
        switch (descricao.toUpperCase()) {
            case "INTERNA":
                return FuncaoType.INTERNA;
            default:
                return FuncaoType.EXTERNA;
        }
    }
}

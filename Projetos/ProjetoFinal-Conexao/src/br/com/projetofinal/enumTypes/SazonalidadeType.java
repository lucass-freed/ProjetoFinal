package br.com.projetofinal.enumTypes;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public enum SazonalidadeType {
    
    NUNCA_OCORREU("Nunca Ocorreu"), 
    BAIXA_FREQUENCIA("Baixa Frequência"), 
    MEDIA_FREQUENCIA("Média Frequência"), 
    ALTA_FREQUENCIA("Alta Frequência");
    
    private final String descricao;

    private SazonalidadeType(String descricao) {
        this.descricao = descricao;
    }
}

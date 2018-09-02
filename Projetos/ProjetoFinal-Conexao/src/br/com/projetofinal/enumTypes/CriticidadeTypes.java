package br.com.projetofinal.enumTypes;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
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
    
    
}

package br.com.projetofinal.bean;

import br.com.projetofinal.enumTypes.CriticidadeTypes;

/**
 *
 * @author Matheus Werner
 */
public class TagBean {
    
    private int id;
    private String titulo;
    private CriticidadeTypes criticidade;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public CriticidadeTypes getCriticidade() {
        return criticidade;
    }

    public void setCriticidade(CriticidadeTypes criticidade) {
        this.criticidade = criticidade;
    }
}

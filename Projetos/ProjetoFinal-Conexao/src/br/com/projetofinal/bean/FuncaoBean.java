package br.com.projetofinal.bean;

import br.com.projetofinal.enumTypes.FuncaoType;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class FuncaoBean {
    
    private int id;
    private String nome;
    private String setor;
    private FuncaoType tipo;
    private String descricao;
    private boolean excluido;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public FuncaoType getTipo() {
        return tipo;
    }

    public void setTipo(FuncaoType tipo) {
        this.tipo = tipo;
    }
    
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public boolean isExcluido() {
        return excluido;
    }

    public void setExcluido(boolean excluido) {
        this.excluido = excluido;
    }
}

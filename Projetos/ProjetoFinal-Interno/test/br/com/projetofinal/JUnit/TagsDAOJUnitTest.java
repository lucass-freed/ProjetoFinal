package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.dao.TagsDAO;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TagsDAOJUnitTest {

    @Test
    public void inserir() {
        Conexao.truncate();

        TagBean t = new TagBean();
        t.setTitulo("Teste");
        t.setCriticidade(CriticidadeTypes.ALTA);

        int cod = new TagsDAO().inserir(t);
        t.setId(cod);
    }

    @Test
    public void excluir() {
        Conexao.truncate();

        TagBean t = new TagBean();
        t.setTitulo("Teste");
        t.setCriticidade(CriticidadeTypes.ALTA);

        int cod = new TagsDAO().inserir(t);
        new TagsDAO().apagar(cod);
    }

    @Test
    public void alterar() {
        Conexao.truncate();
        
        TagBean t = new TagBean();
        int cod = new TagsDAO().inserir(t);
        t.setTitulo("Teste");
        t.setCriticidade(CriticidadeTypes.ALTA);

        new TagsDAO().alterar(t);
    }

    @Test
    public void buscarPorID() {
        Conexao.truncate();
        new TagsDAO().obterPeloID(1);
    }

    @Test
    public void obterTodos() {
        Conexao.truncate();
        new TagsDAO().obterTodos();
    }
    
    @Test
    public void obterTodosParaDataTable() {
        Conexao.truncate();
        new TagsDAO().obterTodosParaDataTable();
    }
}

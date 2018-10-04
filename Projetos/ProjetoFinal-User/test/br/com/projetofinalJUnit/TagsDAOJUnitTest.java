package br.com.projetofinalJUnit;

import br.com.projetofinal.dao.TagsDAO;
import br.com.projetofinal.database.Conexao;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TagsDAOJUnitTest {
    
    @Test
    public void obterPeloID() {
        Conexao.truncate();
        new TagsDAO().obterPeloID(1);
    }
    
    @Test
    public void listarTags() {
        Conexao.truncate();
        new TagsDAO().listarTags();
    }
}

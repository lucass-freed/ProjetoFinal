package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.dao.FuncaoDAO;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class FuncaoDAOJUnitTest {
    
    @Test
    public void inserir() throws NoSuchAlgorithmException {
        Conexao.truncate();

        FuncaoBean f = new FuncaoBean();
        f.setNome("sadas");
        f.setSetor("as");
        f.setDescricao("as");

        int cod = new FuncaoDAO().inserir(f);
        f.setId(cod);

        assertEquals(cod, 1);
        validarIgual(f, new FuncaoDAO().obterFuncaoPeloID(cod));
    }

    @Test
    public void excluir() throws NoSuchAlgorithmException {
        Conexao.truncate();

        FuncaoBean f = new FuncaoBean();
        f.setNome("sadas");
        f.setSetor("as");
        f.setDescricao("as");

        int cod = new FuncaoDAO().inserir(f);
        new FuncaoDAO().apagar(cod);

        assertNull(new FuncaoDAO().obterFuncaoPeloID(cod));
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
        Conexao.truncate();

        FuncaoBean f = new FuncaoBean();
        int cod = new FuncaoDAO().inserir(f);
        f.setId(cod);
        f.setNome("sadas");
        f.setSetor("as");
        f.setDescricao("as");

        new FuncaoDAO().alterar(f);
        FuncaoBean func = new FuncaoDAO().obterFuncaoPeloID(cod);
        validarIgual(f, func);
    }

    @Test
    public void buscarPorID() {
        Conexao.truncate();

        FuncaoBean f = new FuncaoBean();
        f.setNome("sadas");
        f.setSetor("as");
        f.setDescricao("as");

        int cod = new FuncaoDAO().obterFuncaoPeloID(f);
        f.setId(cod);

        FuncaoBean f2 = new FuncaoDAO().obterFuncaoPeloID(cod);
        validarIgual(f, f2);
    }

    public void validarIgual(FuncaoBean f1, FuncaoBean f2) {
        assertEquals(f1.getId(), f2.getId());
        assertEquals(f1.getNome(), f2.getNome());
        assertEquals(f1.getSetor(), f2.getSetor());
        assertEquals(f1.getDescricao(), f2.getDescricao());
    }
    
}
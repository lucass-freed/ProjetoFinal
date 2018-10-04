package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.dao.FuncaoDAO;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
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
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
        Conexao.truncate();

        FuncaoBean f = new FuncaoBean();
        f.setNome("sadas");
        f.setSetor("as");
        f.setDescricao("as");
        
        int cod = new FuncaoDAO().inserir(f);
        f.setId(cod);

        new FuncaoDAO().alterar(f);
    }

    @Test
    public void buscarPorID() {
        Conexao.truncate();
        new FuncaoDAO().obterFuncaoPeloID(1);
    }
    
    @Test
    public void obterTodas() {
        Conexao.truncate();
        new FuncaoDAO().obterFuncoes();
    }
    
    @Test
    public void obterFuncoesInternas() {
        Conexao.truncate();
        new FuncaoDAO().obterFuncoesInternas();
    }
    
    @Test
    public void obterFuncoesExternas() {
        Conexao.truncate();
        new FuncaoDAO().obterFuncoesExternas();
    }
    
    @Test
    public void getQuantidadeCadastrados() {
        Conexao.truncate();
        new FuncaoDAO().getQuantidadeCadastradas();
    }
    
    @Test
    public void obterTodosParaDataTable() {
        Conexao.truncate();
        new FuncaoDAO().obterTodosParaDataTable();
    }
}
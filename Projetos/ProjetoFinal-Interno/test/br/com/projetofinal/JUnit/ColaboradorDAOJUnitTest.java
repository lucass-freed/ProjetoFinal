package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class ColaboradorDAOJUnitTest {

    @Test
    public void inserir() throws NoSuchAlgorithmException {
        Conexao.truncate();

        ColaboradorBean c = new ColaboradorBean();
        c.setIdFuncao(1);
        c.setUsuario("as");
        c.setSenha("asds");
        c.setNome("as");
        c.setCpf("as");
        c.setDataNascimento(Date.valueOf("1993-12-30"));
        c.setTelefone("as");
        c.setEmail("as");
        c.setLogradouro("as");
        c.setNumero("232");
        c.setComplemento("as");
        c.setBairro("as");
        c.setCep("as");
        c.setCidade("as");
        c.setUf("as");
        c.setDataAdmissao(Date.valueOf("1993-12-30"));
        c.setCtps("as");
        c.setPis("as");

        int cod = new ColaboradorDAO().inserir(c);
    }

    @Test
    public void excluir() {
        Conexao.truncate();
        new ColaboradorDAO().apagar(1);
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
        Conexao.truncate();

        ColaboradorBean c = new ColaboradorBean();
        c.setIdFuncao(1);
        c.setUsuario("as");
        c.setSenha("asds");
        c.setNome("as");
        c.setCpf("as");
        c.setDataNascimento(Date.valueOf("1993-12-30"));
        c.setTelefone("as");
        c.setEmail("as");
        c.setLogradouro("as");
        c.setNumero("232");
        c.setComplemento("as");
        c.setBairro("as");
        c.setCep("as");
        c.setCidade("as");
        c.setUf("as");
        c.setDataAdmissao(Date.valueOf("1993-12-30"));
        c.setCtps("as");
        c.setPis("as");

        int cod = new ColaboradorDAO().inserir(c);
        c.setId(cod);

        new ColaboradorDAO().alterar(c);
    }

    @Test
    public void buscarPorID() {
        Conexao.truncate();
        new ColaboradorDAO().obterColaboradorPorID(1);
    }

    @Test
    public void obterTodos() {
        Conexao.truncate();
        new ColaboradorDAO().obterColaboradores();
    }

    @Test
    public void getQuantidadeCadastrados() {
        Conexao.truncate();
        new ColaboradorDAO().getQuantidadeColaboradoresCadastrados();
    }

    @Test
    public void obterTodosParaDataTable() {
        Conexao.truncate();
        new ColaboradorDAO().obterTodosParaDataTable();
    }
}

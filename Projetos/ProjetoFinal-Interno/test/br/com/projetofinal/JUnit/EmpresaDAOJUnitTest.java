package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.dao.EmpresaDAO;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class EmpresaDAOJUnitTest {

    @Test
    public void inserir() throws NoSuchAlgorithmException {
        Conexao.truncate();

        EmpresaBean e = new EmpresaBean();
        e.setCnpj("dsadsa");
        e.setRazaoSocial("dsadsa");
        e.setNomeFantasia("dsadsa");
        e.setInscricaoEstadual("dsadsa");
        e.setEmail("dsadsa");
        e.setTelefone("dsadsa");
        e.setLogradouro("dsadsa");
        e.setNumero("dsadsa");
        e.setComplemento("dsadsa");
        e.setBairro("dsadsa");
        e.setCep("dsadsa");
        e.setCidade("dsadsa");
        e.setUf("as");
        e.setSistema("dsadsa");
        e.setDataAtivacao(Date.valueOf("1993-12-30"));
        e.setDataExpiracao(Date.valueOf("1993-12-30"));
        e.setValidadeCertificado(Date.valueOf("1993-12-30"));

        new EmpresaDAO().inserir(e);
    }

    @Test
    public void excluir() {
        Conexao.truncate();
        new EmpresaDAO().excluir(1);
    }

    @Test
    public void alterar() {
        Conexao.truncate();

        EmpresaBean e = new EmpresaBean();
        e.setCnpj("dsadsa");
        e.setRazaoSocial("dsadsa");
        e.setNomeFantasia("dsadsa");
        e.setInscricaoEstadual("dsadsa");
        e.setEmail("dsadsa");
        e.setTelefone("dsadsa");
        e.setLogradouro("dsadsa");
        e.setNumero("dsadsa");
        e.setComplemento("dsadsa");
        e.setBairro("dsadsa");
        e.setCep("dsadsa");
        e.setCidade("dsadsa");
        e.setUf("as");
        e.setSistema("dsadsa");
        e.setDataAtivacao(Date.valueOf("1993-12-30"));
        e.setDataExpiracao(Date.valueOf("1993-12-30"));
        e.setValidadeCertificado(Date.valueOf("1993-12-30"));

        int cod = new EmpresaDAO().inserir(e);
        e.setId(cod);

        new EmpresaDAO().alterar(e);
    }

    @Test
    public void buscarPorID() {
        Conexao.truncate();
        new EmpresaDAO().obterPeloID(1);
    }
    
    @Test
    public void obterTodos() {
        Conexao.truncate();
        new EmpresaDAO().obterTodos();
    }
    
    @Test
    public void getQuantidadeCadastrados() {
        Conexao.truncate();
        new EmpresaDAO().getQuantidadeEmpresasCadastradas();
    }
    
    @Test
    public void obterTodosParaDataTable() {
        Conexao.truncate();
        new EmpresaDAO().obterTodosParaDataTable();
    }
}

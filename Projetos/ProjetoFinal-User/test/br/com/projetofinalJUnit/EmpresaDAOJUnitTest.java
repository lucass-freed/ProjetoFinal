package br.com.projetofinalJUnit;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.dao.EmpresaDAO;
import br.com.projetofinal.database.Conexao;
import java.sql.Date;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class EmpresaDAOJUnitTest {

    @Test
    public void inserir() {
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
    }

    @Test
    public void obterDadosEmpresa() {
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
    }

    @Test
    public void obterPeloID() {
        Conexao.truncate();
        new EmpresaDAO().obterPeloID(1);
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
}

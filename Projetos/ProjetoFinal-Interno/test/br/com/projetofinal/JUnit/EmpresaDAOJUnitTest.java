package br.com.projetofinal.JUnit;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.dao.EmpresaDAO;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import org.junit.Test;
import static org.junit.Assert.*;

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

        int cod = new EmpresaDAO().inserir(e);
        e.setId(cod);

        assertEquals(cod, 1);
        validarIgual(e, new EmpresaDAO().obterPeloID(cod));
    }

    @Test
    public void excluir() throws NoSuchAlgorithmException {
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
        new EmpresaDAO().excluir(cod);

        assertNull(new EmpresaDAO().obterPeloID(cod));
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
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
        validarIgual(e, new EmpresaDAO().obterPeloID(cod));
    }

    @Test
    public void buscarPorID() throws NoSuchAlgorithmException {
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

        validarIgual(e, new EmpresaDAO().obterPeloID(cod));
    }

    public void validarIgual(EmpresaBean e1, EmpresaBean e2) {
        assertEquals(e1.getId(), e2.getId());
        assertEquals(e1.getCnpj(), e2.getCnpj());
        assertEquals(e1.getRazaoSocial(), e2.getRazaoSocial());
        assertEquals(e1.getNomeFantasia(), e2.getNomeFantasia());
        assertEquals(e1.getInscricaoEstadual(), e2.getInscricaoEstadual());
        assertEquals(e1.getEmail(), e2.getEmail());
        assertEquals(e1.getTelefone(), e2.getTelefone());
        assertEquals(e1.getLogradouro(), e2.getLogradouro());
        assertEquals(e1.getNumero(), e2.getNumero());
        assertEquals(e1.getComplemento(), e2.getComplemento());
        assertEquals(e1.getBairro(), e2.getBairro());
        assertEquals(e1.getCep(), e2.getCep());
        assertEquals(e1.getCidade(), e2.getCidade());
        assertEquals(e1.getUf(), e2.getUf());
        assertEquals(e1.getSistema(), e2.getSistema());
        assertEquals(e1.getDataAtivacao(), e2.getDataAtivacao());
        assertEquals(e1.getDataExpiracao(), e2.getDataExpiracao());
        assertEquals(e1.getValidadeCertificado(), e2.getValidadeCertificado());
    }

}

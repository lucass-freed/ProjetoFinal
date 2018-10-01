package br.com.projetofinal.JUnit;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.time.LocalDate;
import org.junit.Test;
import static org.junit.Assert.*;

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
        c.setId(cod);

        //assertEquals(cod, 1);
        validarIgual(c, new ColaboradorDAO().obterColaboradorPorID(cod));
    }

    @Test
    public void excluir() throws NoSuchAlgorithmException {
        //Conexao.truncate();

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
        new ColaboradorDAO().apagar(cod);

        assertNull(new ColaboradorDAO().obterColaboradorPorID(cod));
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
        //Conexao.truncate();

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
        validarIgual(c, new ColaboradorDAO().obterColaboradorPorID(cod));
    }

    @Test
    public void buscarPorID() throws NoSuchAlgorithmException {
        //Conexao.truncate();

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

        validarIgual(c, new ColaboradorDAO().obterColaboradorPorID(cod));
    }

    public void validarIgual(ColaboradorBean c1, ColaboradorBean c2) throws NoSuchAlgorithmException {
        assertEquals(c1.getId(), c2.getId());
        assertEquals(c1.getIdFuncao(), c2.getIdFuncao());
        assertEquals(c1.getUsuario(), c2.getUsuario());
        assertEquals(new SHA512Metodos().criptografarSenha(c1.getSenha()), c2.getSenha());
        assertEquals(c1.getCpf(), c2.getCpf());
        assertEquals(c1.getDataNascimento(), c2.getDataNascimento());
        assertEquals(c1.getTelefone(), c2.getTelefone());
        assertEquals(c1.getEmail(), c2.getEmail());
        assertEquals(c1.getLogradouro(), c2.getLogradouro());
        assertEquals(c1.getNumero(), c2.getNumero());
        assertEquals(c1.getComplemento(), c2.getComplemento());
        assertEquals(c1.getBairro(), c2.getBairro());
        assertEquals(c1.getCep(), c2.getCep());
        assertEquals(c1.getCidade(), c2.getCidade());
        assertEquals(c1.getUf(), c2.getUf());
        assertEquals(c1.getDataAdmissao(), c2.getDataAdmissao());
        assertEquals(c1.getCtps(), c2.getCtps());
        assertEquals(c1.getPis(), c2.getPis());
    }

}

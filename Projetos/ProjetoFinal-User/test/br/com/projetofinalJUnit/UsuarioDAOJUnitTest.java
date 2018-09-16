package br.com.projetofinalJUnit;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.UsuarioDAO;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class UsuarioDAOJUnitTest {
    
    @Test
    public void inserir() throws NoSuchAlgorithmException {
        //Conexao.truncate();
        
        UsuarioBean u = new UsuarioBean();
        u.setIdEmpresa(1);
        u.setIdFuncao(1);
        u.setUsuario("dsa");
        u.setSenha("dsaasd");
        u.setNome("dsadsa");
        u.setCpf("dsadas");
        u.setDataNascimento(Date.valueOf("1993-12-30"));
        u.setTelefone("dsadsa");
        u.setEmail("dsasa");
        u.setUsuarioMaster(true);

        int cod = new UsuarioDAO().inserir(u);
        u.setId(cod);

        //assertEquals(cod, 1);
        validarIgual(u, new UsuarioDAO().obterUsuarioPorID(cod));
    }

    @Test
    public void excluir() throws NoSuchAlgorithmException {
        //Conexao.truncate();

        UsuarioBean u = new UsuarioBean();
        u.setIdEmpresa(1);
        u.setIdFuncao(1);
        u.setUsuario("dsa");
        u.setSenha("dsaasd");
        u.setNome("dsadsa");
        u.setCpf("dsadas");
        u.setDataNascimento(Date.valueOf("1993-12-30"));
        u.setTelefone("dsadsa");
        u.setEmail("dsasa");
        u.setUsuarioMaster(true);

        int cod = new UsuarioDAO().inserir(u);
        new UsuarioDAO().apagar(cod);

        assertNull(new UsuarioDAO().obterUsuarioPorID(cod));
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
        //Conexao.truncate();

        UsuarioBean u = new UsuarioBean();
        u.setIdEmpresa(1);
        u.setIdFuncao(1);
        u.setUsuario("dsa");
        u.setSenha("dsaasd");
        u.setNome("dsadsa");
        u.setCpf("dsadas");
        u.setDataNascimento(Date.valueOf("1993-12-30"));
        u.setTelefone("dsadsa");
        u.setEmail("dsasa");
        u.setUsuarioMaster(true);

        int cod = new UsuarioDAO().inserir(u);
        u.setId(cod);

        new UsuarioDAO().alterar(u);
        validarIgual(u, new UsuarioDAO().obterUsuarioPorID(cod));
    }

    @Test
    public void buscarPorID() throws NoSuchAlgorithmException {
        //Conexao.truncate();

        UsuarioBean u = new UsuarioBean();
        u.setIdEmpresa(1);
        u.setIdFuncao(1);
        u.setUsuario("dsa");
        u.setSenha("dsaasd");
        u.setNome("dsadsa");
        u.setCpf("dsadas");
        u.setDataNascimento(Date.valueOf("1993-12-30"));
        u.setTelefone("dsadsa");
        u.setEmail("dsasa");
        u.setUsuarioMaster(true);

        int cod = new UsuarioDAO().inserir(u);
        u.setId(cod);

        validarIgual(u, new UsuarioDAO().obterUsuarioPorID(cod));
    }

    public void validarIgual(UsuarioBean u1, UsuarioBean u2) throws NoSuchAlgorithmException {
        assertEquals(u1.getId(), u2.getId());
        assertEquals(u1.getIdEmpresa(), u2.getIdEmpresa());
        assertEquals(u1.getIdFuncao(), u2.getIdFuncao());
        assertEquals(u1.getUsuario(), u2.getUsuario());
        assertEquals(new SHA512Metodos().criptografarSenha(u1.getSenha()), u2.getSenha());
        assertEquals(u1.getNome(), u2.getNome());
        assertEquals(u1.getCpf(), u2.getCpf());
        assertEquals(u1.getDataNascimento(), u2.getDataNascimento());
        assertEquals(u1.getTelefone(), u2.getTelefone());
        assertEquals(u1.getEmail(), u2.getEmail());
        assertEquals(u1.getUsuario(), u2.getUsuario());
    }

}

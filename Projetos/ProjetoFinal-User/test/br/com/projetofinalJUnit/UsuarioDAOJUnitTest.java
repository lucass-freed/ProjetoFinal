package br.com.projetofinalJUnit;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.UsuarioDAO;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class UsuarioDAOJUnitTest {
    
    @Test
    public void inserir() throws NoSuchAlgorithmException {
        Conexao.truncate();
        
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
        u.setMaster(true);

        int cod = new UsuarioDAO().inserir(u);
        u.setId(cod);
    }

    @Test
    public void excluir() {
        Conexao.truncate();
        new UsuarioDAO().apagar(1);
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
        Conexao.truncate();

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
        u.setMaster(true);

        int cod = new UsuarioDAO().inserir(u);
        u.setId(cod);

        new UsuarioDAO().alterar(u);
    }

    @Test
    public void buscarPorID() {
        Conexao.truncate();
        new UsuarioDAO().obterUsuarioPorID(1);
    }
    
    @Test
    public void obterUsuarios() {
        Conexao.truncate();
        new UsuarioDAO().obterUsuarios();
    }
    
    @Test
    public void obterUsuarioPorID() {
        Conexao.truncate();
        new UsuarioDAO().obterUsuarioPorID(1);
    }
    
    @Test
    public void getQuantidadeUsuariosCadastradas() {
        Conexao.truncate();
        new UsuarioDAO().getQuantidadeUsuariosCadastradas();
    }
}

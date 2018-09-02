package br.com.projetofinal.dao;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author Matheus Werner
 * @contributor: Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class UsuarioDAO {

    public int inserir(UsuarioBean usuario) throws NoSuchAlgorithmException {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO usuario (id_empresa, id_usuario_funcao, usuario,"
                    + "senha, nome, cpf, data_nascimento, telefone, email, usuario_master)"
                    + " VALUES (?,?,?,?,?,?,?,?,?,?) ";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql,
                        PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setInt(quantidade++, usuario.getIdEmpresa());
                ps.setInt(quantidade++, usuario.getIdFuncao());
                ps.setString(quantidade++, usuario.getUsuario());
                String senhaCriptografada = new br.com.projetofinal.Util.SHA512Metodos()
                        .criptografarSenha(usuario.getSenha());
                ps.setString(quantidade++, senhaCriptografada);
                ps.setString(quantidade++, usuario.getNome());
                ps.setString(quantidade++, usuario.getCpf());
                ps.setString(quantidade++, usuario.getDataNascimento());
                ps.setInt(quantidade++, usuario.getTelefone());
                ps.setString(quantidade++, usuario.getEmail());
                ps.setBoolean(quantidade++, usuario.isUsuarioMaster());
                ps.execute();

                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return 0;
    }

    public boolean apagar(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "DELETE FROM usuarios WHERE id = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                return ps.executeUpdate() == 1;
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return false;
    }

    public List<UsuarioBean> obterUsuarios() {
        List<UsuarioBean> usuarios = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id, id_empresa, id_usuario_funcao, usuario,"
                    + "senha, nome, cpf, data_nascimento, telefone, email, usuario_master"
                    + "FROM usuarios;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    UsuarioBean usuario = new UsuarioBean();
                    usuario.setId(rs.getInt("id"));
                    usuario.setIdEmpresa(rs.getInt("id_empresa"));
                    usuario.setIdFuncao(rs.getInt("id_usuario_funcao"));
                    usuario.setUsuario(rs.getString("usuario"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setCpf(rs.getString("cpf"));
                    usuario.setDataNascimento(rs.getString("data_nascimento"));
                    usuario.setTelefone(rs.getInt("telefone"));
                    usuario.setEmail(rs.getString("email"));
                    usuario.setUsuarioMaster(rs.getBoolean("usuario_master"));
                    usuarios.add(usuario);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }

        }
        return usuarios;
    }

    public UsuarioBean obterUsuarioPorID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id, id_empresa, id_usuario_funcao, usuario,"
                    + "senha, nome, cpf, data_nascimento, telefone, email, usuario_master"
                    + "FROM usuarios WHERE id = ?;";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    UsuarioBean usuario = new UsuarioBean();
                    usuario.setId(rs.getInt("id"));
                    usuario.setIdEmpresa(rs.getInt("id_empresa"));
                    usuario.setIdFuncao(rs.getInt("id_usuario_funcao"));
                    usuario.setUsuario(rs.getString("usuario"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setCpf(rs.getString("cpf"));
                    usuario.setDataNascimento(rs.getString("data_nascimento"));
                    usuario.setTelefone(rs.getInt("telefone"));
                    usuario.setEmail(rs.getString("email"));
                    usuario.setUsuarioMaster(rs.getBoolean("usuario_master"));
                    return usuario;

                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return null;
    }

    public UsuarioBean obterUsuarioPeloUsuarioOuEmail(String usuario) {
        for (UsuarioBean user : obterUsuarios()) {
            if (user.getUsuario().equals(usuario) || user.getEmail().equals(usuario)) {
                return user;
            }
        }
        return null;
    }
}

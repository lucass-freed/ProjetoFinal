package br.com.projetofinal.dao;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
            String sql = "INSERT INTO usuario (id_empresa, id_funcao, usuario,"
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
                ps.setDate(quantidade++, usuario.getDataNascimento());
                ps.setString(quantidade++, usuario.getTelefone());
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
            String sql = "SELECT id, id_empresa, id_funcao, usuario,"
                    + "senha, nome, cpf, data_nascimento, telefone, email, usuario_master"
                    + "\nFROM usuarios;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    UsuarioBean usuario = new UsuarioBean();
                    usuario.setId(rs.getInt("id"));
                    usuario.setIdEmpresa(rs.getInt("id_empresa"));
                    usuario.setIdFuncao(rs.getInt("id_funcao"));
                    usuario.setUsuario(rs.getString("usuario"));
                    usuario.setSenha(rs.getString("senha"));
                    usuario.setNome(rs.getString("nome"));
                    usuario.setCpf(rs.getString("cpf"));
                    usuario.setDataNascimento(rs.getDate("data_nascimento"));
                    usuario.setTelefone(rs.getString("telefone"));
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
            String sql = "SELECT "
                    + "u.id, "
                    + "u.id_empresa, "
                    + "u.id_funcao, "
                    + "u.usuario, "
                    + "u.senha, "
                    + "u.nome, "
                    + "u.cpf, "
                    + "u.data_nascimento, "
                    + "u.telefone, "
                    + "u.email, "
                    + "u.usuario_master, "
                    + "f.nome"
                    + "\nFROM usuarios u "
                    + "\nJOIN funcoes f ON(u.id_funcao = f.id)"
                    + "\nWHERE u.id = ?;";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    UsuarioBean usuario = new UsuarioBean();
                    usuario.setId(rs.getInt("u.id"));
                    usuario.setIdEmpresa(rs.getInt("u.id_empresa"));
                    usuario.setIdFuncao(rs.getInt("u.id_funcao"));
                    usuario.setUsuario(rs.getString("u.usuario"));
                    usuario.setSenha(rs.getString("u.senha"));
                    usuario.setNome(rs.getString("u.nome"));
                    usuario.setCpf(rs.getString("u.cpf"));
                    usuario.setDataNascimento(rs.getDate("u.data_nascimento"));
                    usuario.setTelefone(rs.getString("u.telefone"));
                    usuario.setEmail(rs.getString("u.email"));
                    usuario.setUsuarioMaster(rs.getBoolean("u.usuario_master"));

                    FuncaoBean funcao = new FuncaoBean();
                    funcao.setId(rs.getInt("u.id_funcao"));
                    funcao.setNome(rs.getString("f.nome"));
                    usuario.setFuncao(funcao);

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

    public UsuarioBean validarLoginSenha(String usuario, String senha) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id FROM usuarios WHERE (usuario = ? OR email = ?) AND senha = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setString(1, usuario);
                ps.setString(2, usuario);
                ps.setString(3, senha);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    int id = rs.getInt("id");
                    return obterUsuarioPorID(id);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return null;
    }
}

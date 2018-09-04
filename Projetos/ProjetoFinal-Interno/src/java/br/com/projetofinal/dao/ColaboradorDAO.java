package br.com.projetofinal.dao;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.ColaboradorBean;
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
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class ColaboradorDAO extends SHA512Metodos {

    public int inserir(ColaboradorBean colaborador) throws NoSuchAlgorithmException {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO colaboradores("
                    + "id, "
                    + "id_funcao, "
                    + "usuario,"
                    + "senha,"
                    + "nome,"
                    + "cpf,"
                    + "data_nascimento,"
                    + "telefone,"
                    + "email,"
                    + "logradouro,"
                    + "numero,"
                    + "complemento,"
                    + "bairro,"
                    + "cep,"
                    + "cidade,"
                    + "uf,"
                    + "data_admissao,"
                    + "ctps,"
                    + "pis)"
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 0;
                ps.setInt(quantidade++, colaborador.getIdFuncao());
                ps.setString(quantidade++, colaborador.getUsuario());
                String senhaCriptografada = new SHA512Metodos().criptografarSenha(colaborador.getSenha());
                ps.setString(quantidade++, senhaCriptografada);
                ps.setString(quantidade++, colaborador.getNome());
                ps.setString(quantidade++, colaborador.getCpf());
                ps.setString(quantidade++, colaborador.getData_nascimento());
                ps.setInt(quantidade++, colaborador.getTelefone());
                ps.setString(quantidade++, colaborador.getLogradouro());
                ps.setInt(quantidade++, colaborador.getNumero());
                ps.setString(quantidade++, colaborador.getComplemento());
                ps.setString(quantidade++, colaborador.getBairro());
                ps.setString(quantidade++, colaborador.getCep());
                ps.setString(quantidade++, colaborador.getCidade());
                ps.setString(quantidade++, colaborador.getUf());
                ps.setString(quantidade++, colaborador.getData_admissao());
                ps.setString(quantidade++, colaborador.getCtps());
                ps.setString(quantidade++, colaborador.getPis());
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
            String sql = "DELETE FROM colaboradores WHERE id = ?";
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

    public List<ColaboradorBean> obterColaboradores() {
        List<ColaboradorBean> colaboradores = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT "
                    + "id, "
                    + "id_funcao, "
                    + "usuario, "
                    + "senha, "
                    + "nome, "
                    + "cpf, "
                    + "data_nascimento, "
                    + "telefone, "
                    + "email, "
                    + "logradouro, "
                    + "numero, "
                    + "complemento, "
                    + "bairro, "
                    + "cep, "
                    + "cidade, "
                    + "uf, "
                    + "data_admissao, "
                    + "ctps, "
                    + "pis FROM colaboradores;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    ColaboradorBean colaborador = new ColaboradorBean();
                    colaborador.setId(rs.getInt("id"));
                    colaborador.setIdFuncao(rs.getInt("id_funcao"));
                    colaborador.setNome(rs.getString("usuario"));
                    colaborador.setCpf(rs.getString("cpf"));
                    colaborador.setData_nascimento(rs.getString("data_nascimento"));
                    colaborador.setTelefone(rs.getInt("telefone"));
                    colaborador.setEmail(rs.getString("email"));
                    colaborador.setLogradouro(rs.getString("logradouro"));
                    colaborador.setNumero(rs.getInt("numero"));
                    colaborador.setComplemento(rs.getString("complemento"));
                    colaborador.setBairro(rs.getString("bairro"));
                    colaborador.setCep(rs.getString("cep"));
                    colaborador.setCidade(rs.getString("cidade"));
                    colaborador.setUf(rs.getString("uf"));
                    colaborador.setData_admissao(rs.getString("data_admissao"));
                    colaborador.setCtps(rs.getString("ctps"));
                    colaborador.setPis(rs.getString("pis"));
                    colaboradores.add(colaborador);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return colaboradores;
    }

    public ColaboradorBean obterColaboradorPorID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT "
                    + "id,"
                    + "id_funcao, "
                    + "usuario, "
                    + "senha, "
                    + "nome, "
                    + "cpf, "
                    + "data_nascimento, "
                    + "telefone, "
                    + "email, "
                    + "logradouro, "
                    + "numero, "
                    + "complemento, "
                    + "bairro, "
                    + "cep, "
                    + "cidade, "
                    + "uf, "
                    + "data_admissao, "
                    + "ctps, "
                    + "pis "
                    + "\nFROM colaboradores c "
                    + "\nJOIN funcoes f ON(c.id_funcao = f.id)"
                    + "\nWHERE c.id = ?;";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    ColaboradorBean colaborador = new ColaboradorBean();
                    colaborador.setId(rs.getInt("id"));
                    colaborador.setIdFuncao(rs.getInt("id_funcao"));
                    colaborador.setNome(rs.getString("usuario"));
                    colaborador.setCpf(rs.getString("cpf"));
                    colaborador.setData_nascimento(rs.getString("data_nascimento"));
                    colaborador.setTelefone(rs.getInt("telefone"));
                    colaborador.setEmail(rs.getString("email"));
                    colaborador.setLogradouro(rs.getString("logradouro"));
                    colaborador.setNumero(rs.getInt("numero"));
                    colaborador.setComplemento(rs.getString("complemento"));
                    colaborador.setBairro(rs.getString("bairro"));
                    colaborador.setCep(rs.getString("cep"));
                    colaborador.setCidade(rs.getString("cidade"));
                    colaborador.setUf(rs.getString("uf"));
                    colaborador.setData_admissao(rs.getString("data_admissao"));
                    colaborador.setCtps(rs.getString("ctps"));
                    colaborador.setPis(rs.getString("pis"));
                    return colaborador;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return null;
    }

    public boolean isContainsColaborador(String nomeColaborador) {
        List<ColaboradorBean> colaboradores = obterColaboradores();
        boolean is = false;
        for (ColaboradorBean colaborador : colaboradores) {
            if (!is) {
                is = colaborador.getNome().equalsIgnoreCase(nomeColaborador);
            }
        }
        return false;
    }

    public ColaboradorBean validarLoginSenha(String usuario, String senha) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id FROM colaboradores WHERE (usuario = ? OR email = ?) AND senha = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setString(1, usuario);
                ps.setString(2, usuario);
                ps.setString(3, senha);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    int id = rs.getInt("id");
                    return obterColaboradorPorID(id);
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

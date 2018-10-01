package br.com.projetofinal.dao;

import br.com.projetofinal.Util.DateFormatador;
import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.database.Conexao;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class ColaboradorDAO extends SHA512Metodos {

    public int inserir(ColaboradorBean colaborador) throws NoSuchAlgorithmException {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO colaboradores("
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
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setInt(quantidade++, colaborador.getIdFuncao());
                ps.setString(quantidade++, colaborador.getUsuario());
                ps.setString(quantidade++, new SHA512Metodos().criptografarSenha(colaborador.getSenha()));
                ps.setString(quantidade++, colaborador.getNome());
                ps.setString(quantidade++, colaborador.getCpf());
                ps.setDate(quantidade++, colaborador.getDataNascimento());
                ps.setString(quantidade++, colaborador.getTelefone());
                ps.setString(quantidade++, colaborador.getEmail());
                ps.setString(quantidade++, colaborador.getLogradouro());
                ps.setString(quantidade++, colaborador.getNumero());
                ps.setString(quantidade++, colaborador.getComplemento());
                ps.setString(quantidade++, colaborador.getBairro());
                ps.setString(quantidade++, colaborador.getCep());
                ps.setString(quantidade++, colaborador.getCidade());
                ps.setString(quantidade++, colaborador.getUf());
                ps.setDate(quantidade++, colaborador.getDataAdmissao());
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

    public boolean alterar(ColaboradorBean colaborador) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "UPDATE colaboradores SET "
                    + "id_funcao = ?, "
                    + "usuario = ?, "
                    + "senha = ?, "
                    + "nome = ?, "
                    + "cpf = ?, "
                    + "data_nascimento = ?, "
                    + "telefone = ?, "
                    + "email = ?, "
                    + "logradouro = ?, "
                    + "numero = ?, "
                    + "complemento = ?, "
                    + "bairro = ?, "
                    + "cep = ?, "
                    + "cidade = ?, "
                    + "uf = ?, "
                    + "data_admissao = ?, "
                    + "ctps = ?, "
                    + "pis = ? "
                    + "WHERE id = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setInt(quantidade++, colaborador.getIdFuncao());
                ps.setString(quantidade++, colaborador.getUsuario());
                ps.setString(quantidade++, colaborador.getSenha());
                ps.setString(quantidade++, colaborador.getNome());
                ps.setString(quantidade++, colaborador.getCpf());
                ps.setDate(quantidade++, colaborador.getDataNascimento());
                ps.setString(quantidade++, colaborador.getTelefone());
                ps.setString(quantidade++, colaborador.getEmail());
                ps.setString(quantidade++, colaborador.getLogradouro());
                ps.setString(quantidade++, colaborador.getNumero());
                ps.setString(quantidade++, colaborador.getComplemento());
                ps.setString(quantidade++, colaborador.getBairro());
                ps.setString(quantidade++, colaborador.getCep());
                ps.setString(quantidade++, colaborador.getCidade());
                ps.setString(quantidade++, colaborador.getUf());
                ps.setDate(quantidade++, colaborador.getDataAdmissao());
                ps.setString(quantidade++, colaborador.getCtps());
                ps.setString(quantidade++, colaborador.getPis());
                ps.setInt(quantidade++, colaborador.getId());
                return ps.executeUpdate() == 1;
            } catch (SQLException e) {
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
                    colaborador.setUsuario(rs.getString("usuario"));
                    colaborador.setSenha(rs.getString("senha"));
                    colaborador.setNome(rs.getString("nome"));
                    colaborador.setCpf(rs.getString("cpf"));
                    colaborador.setDataNascimento(rs.getDate("data_nascimento"));
                    colaborador.setTelefone(rs.getString("telefone"));
                    colaborador.setEmail(rs.getString("email"));
                    colaborador.setLogradouro(rs.getString("logradouro"));
                    colaborador.setNumero(rs.getString("numero"));
                    colaborador.setComplemento(rs.getString("complemento"));
                    colaborador.setBairro(rs.getString("bairro"));
                    colaborador.setCep(rs.getString("cep"));
                    colaborador.setCidade(rs.getString("cidade"));
                    colaborador.setUf(rs.getString("uf"));
                    colaborador.setDataAdmissao(rs.getDate("data_admissao"));
                    colaborador.setCtps(rs.getString("ctps"));
                    colaborador.setPis(rs.getString("pis"));
                    colaboradores.add(colaborador);
                    colaborador.setFuncao(new FuncaoDAO().obterFuncaoPeloID(colaborador.getIdFuncao()));
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
                    + "c.id,"
                    + "c.id_funcao, "
                    + "c.usuario, "
                    + "c.senha, "
                    + "c.nome, "
                    + "c.cpf, "
                    + "c.data_nascimento, "
                    + "c.telefone, "
                    + "c.email, "
                    + "c.logradouro, "
                    + "c.numero, "
                    + "c.complemento, "
                    + "c.bairro, "
                    + "c.cep, "
                    + "c.cidade, "
                    + "c.uf, "
                    + "c.data_admissao, "
                    + "c.ctps, "
                    + "c.pis, "
                    + "c.usuario_master"
                    + "\nFROM colaboradores c "
                    + "\nJOIN funcoes f ON(c.id_funcao = f.id)"
                    + "\nWHERE c.id = ?;";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    ColaboradorBean colaborador = new ColaboradorBean();
                    colaborador.setId(rs.getInt("id"));
                    colaborador.setIdFuncao(rs.getInt("id_funcao"));
                    colaborador.setUsuario(rs.getString("usuario"));
                    colaborador.setSenha(rs.getString("senha"));
                    colaborador.setNome(rs.getString("nome"));
                    colaborador.setCpf(rs.getString("cpf"));
                    colaborador.setDataNascimento(rs.getDate("data_nascimento"));
                    colaborador.setTelefone(rs.getString("telefone"));
                    colaborador.setEmail(rs.getString("email"));
                    colaborador.setLogradouro(rs.getString("logradouro"));
                    colaborador.setNumero(rs.getString("numero"));
                    colaborador.setComplemento(rs.getString("complemento"));
                    colaborador.setBairro(rs.getString("bairro"));
                    colaborador.setCep(rs.getString("cep"));
                    colaborador.setCidade(rs.getString("cidade"));
                    colaborador.setUf(rs.getString("uf"));
                    colaborador.setDataAdmissao(rs.getDate("data_admissao"));
                    colaborador.setCtps(rs.getString("ctps"));
                    colaborador.setPis(rs.getString("pis"));
                    colaborador.setMaster(rs.getBoolean("usuario_master"));
                    colaborador.setFuncao(new FuncaoDAO().obterFuncaoPeloID(rs.getInt("id_funcao")));
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

    public ColaboradorBean validarSenha(int id, String senha) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id FROM colaboradores WHERE id = ? AND senha = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(2, id);
                ps.setString(1, senha);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
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

    public int getQuantidadeColaboradoresCadastrados() {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM colaboradores;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                if (rs.next()) {
                    return rs.getInt("COUNT(id)");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return 0;
    }

    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> colaboradores = new ArrayList<>();
        String sql = "SELECT * FROM colaboradores";
        if (Conexao.getConnection() != null) {
            try {
                Statement statement = Conexao.getConnection().createStatement();
                statement.execute(sql);
                ResultSet resultSet = statement.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> colaborador = new HashMap<>();
                    colaborador.put("id", resultSet.getInt("id"));
                    colaborador.put("usuario", resultSet.getString("usuario"));
                    colaborador.put("nome", resultSet.getString("nome"));
                    colaborador.put("cpf", resultSet.getString("cpf"));
                    colaborador.put("funcao", new FuncaoDAO().obterFuncaoPeloID(resultSet.getInt("id_funcao")).getNome());
                    colaborador.put("email", resultSet.getString("email"));
                    colaborador.put("data_nascimento", DateFormatador.formatoBr(resultSet.getDate("data_nascimento")));
                    colaborador.put("telefone", resultSet.getString("telefone"));
                    if (resultSet.getBoolean("usuario_master") == true) {
                        colaborador.put("tipo", "Master");
                    } else {
                        colaborador.put("tipo", "Regular");
                    }
                    colaboradores.add(colaborador);
                }
            } catch (SQLException ex) {
                Logger.getLogger(TicketDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                Conexao.closeConnection();
            }
        }
        return colaboradores;
    }
}

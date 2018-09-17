package br.com.projetofinal.dao;

import br.com.projetofinal.Util.Formatador;
import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.database.Conexao;
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
 * @author Thiago
 */
public class EmpresaDAO {

    public int inserir(EmpresaBean empresa) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO empresas("
                    + "cnpj, "
                    + "razaoSocial, "
                    + "nomeFantasia, "
                    + "inscricaoEstadual, "
                    + "email, "
                    + "telefone, "
                    + "logradouro, "
                    + "numero, "
                    + "complemento, "
                    + "bairro, "
                    + "cep, "
                    + "cidade, "
                    + "uf, "
                    + "sistema, "
                    + "dataAtivacao, "
                    + "dataExpiracao, "
                    + "validadeCertificado)"
                    + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setString(quantidade++, empresa.getCnpj());
                ps.setString(quantidade++, empresa.getRazaoSocial());
                ps.setString(quantidade++, empresa.getNomeFantasia());
                ps.setString(quantidade++, empresa.getInscricaoEstadual());
                ps.setString(quantidade++, empresa.getEmail());
                ps.setString(quantidade++, empresa.getTelefone());
                ps.setString(quantidade++, empresa.getLogradouro());
                ps.setString(quantidade++, empresa.getNumero());
                ps.setString(quantidade++, empresa.getComplemento());
                ps.setString(quantidade++, empresa.getBairro());
                ps.setString(quantidade++, empresa.getCep());
                ps.setString(quantidade++, empresa.getCidade());
                ps.setString(quantidade++, empresa.getUf());
                ps.setString(quantidade++, empresa.getSistema());
                ps.setDate(quantidade++, empresa.getDataAtivacao());
                ps.setDate(quantidade++, empresa.getDataExpiracao());
                ps.setDate(quantidade++, empresa.getValidadeCertificado());
                ps.execute();

                ResultSet resultSet = ps.getGeneratedKeys();
                if (resultSet.next()) {
                    return resultSet.getInt(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return -1;
    }

    public boolean excluir(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "DELETE FROM empresas WHERE id = ?";
            try {
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, id);
                return ps.executeUpdate() == 1;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return false;
    }

    public boolean alterar(EmpresaBean empresa) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            try {
                String sql = "UPDATE empresas SET "
                        + "cnpj = ?, "
                        + "razaoSocial = ?, "
                        + "nomeFantasia = ?, "
                        + "inscricaoEstadual = ?, "
                        + "email = ?, "
                        + "telefone = ?, "
                        + "logradouro = ?, "
                        + "numero = ?, "
                        + "complemento = ?, "
                        + "bairro = ?, "
                        + "cep = ?, "
                        + "cidade = ?, "
                        + "uf = ?, "
                        + "sistema = ?, "
                        + "dataAtivacao = ?, "
                        + "dataExpiracao = ?, "
                        + "validadeCertificado = ?"
                        + "WHERE id = ?";
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                int quantidade = 1;
                ps.setString(quantidade++, empresa.getCnpj());
                ps.setString(quantidade++, empresa.getRazaoSocial());
                ps.setString(quantidade++, empresa.getNomeFantasia());
                ps.setString(quantidade++, empresa.getInscricaoEstadual());
                ps.setString(quantidade++, empresa.getEmail());
                ps.setString(quantidade++, empresa.getTelefone());
                ps.setString(quantidade++, empresa.getLogradouro());
                ps.setString(quantidade++, empresa.getNumero());
                ps.setString(quantidade++, empresa.getComplemento());
                ps.setString(quantidade++, empresa.getBairro());
                ps.setString(quantidade++, empresa.getCep());
                ps.setString(quantidade++, empresa.getCidade());
                ps.setString(quantidade++, empresa.getUf());
                ps.setString(quantidade++, empresa.getSistema());
                ps.setDate(quantidade++, empresa.getDataAtivacao());
                ps.setDate(quantidade++, empresa.getDataExpiracao());
                ps.setDate(quantidade++, empresa.getValidadeCertificado());
                ps.setInt(quantidade++, empresa.getId());
                return ps.executeUpdate() == 1;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return false;
    }

    public EmpresaBean obterPeloID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            try {
                String sql = "SELECT * FROM empresas WHERE id = ?";
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet resultSet = ps.getResultSet();
                if (resultSet.next()) {
                    EmpresaBean empresa = new EmpresaBean();
                    empresa.setId(id);
                    empresa.setCnpj(resultSet.getString("cnpj"));
                    empresa.setRazaoSocial(resultSet.getString("razaoSocial"));
                    empresa.setNomeFantasia(resultSet.getString("nomeFantasia"));
                    empresa.setInscricaoEstadual(resultSet.getString("inscricaoEstadual"));
                    empresa.setEmail(resultSet.getString("email"));
                    empresa.setTelefone(resultSet.getString("telefone"));
                    empresa.setLogradouro(resultSet.getString("logradouro"));
                    empresa.setNumero(resultSet.getString("numero"));
                    empresa.setComplemento(resultSet.getString("complemento"));
                    empresa.setBairro(resultSet.getString("bairro"));
                    empresa.setCep(resultSet.getString("cep"));
                    empresa.setCidade(resultSet.getString("cidade"));
                    empresa.setUf(resultSet.getString("uf"));
                    empresa.setSistema(resultSet.getString("sistema"));
                    empresa.setDataAtivacao(resultSet.getDate("dataAtivacao"));
                    empresa.setDataExpiracao(resultSet.getDate("dataExpiracao"));
                    empresa.setValidadeCertificado(resultSet.getDate("validadeCertificado"));
                    return empresa;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return null;
    }

    public List<EmpresaBean> obterTodos() {
        List<EmpresaBean> empresas = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            try {
                String sql = "SELECT * FROM empresas";
                Statement st = Conexao.getConnection().createStatement();
                st.execute(sql);
                ResultSet resultSet = st.getResultSet();
                while (resultSet.next()) {
                    EmpresaBean empresa = new EmpresaBean();
                    empresa.setId(resultSet.getInt("id"));
                    empresa.setCnpj(resultSet.getString("cnpj"));
                    empresa.setRazaoSocial(resultSet.getString("razaoSocial"));
                    empresa.setNomeFantasia(resultSet.getString("nomeFantasia"));
                    empresa.setInscricaoEstadual(resultSet.getString("inscricaoEstadual"));
                    empresa.setEmail(resultSet.getString("email"));
                    empresa.setTelefone(resultSet.getString("telefone"));
                    empresa.setLogradouro(resultSet.getString("logradouro"));
                    empresa.setNumero(resultSet.getString("numero"));
                    empresa.setComplemento(resultSet.getString("complemento"));
                    empresa.setBairro(resultSet.getString("bairro"));
                    empresa.setCep(resultSet.getString("cep"));
                    empresa.setCidade(resultSet.getString("cidade"));
                    empresa.setUf(resultSet.getString("uf"));
                    empresa.setUf(resultSet.getString("sistema"));
                    empresa.setDataAtivacao(resultSet.getDate("dataAtivacao"));
                    empresa.setDataExpiracao(resultSet.getDate("dataExpiracao"));
                    empresa.setValidadeCertificado(resultSet.getDate("validadeCertificado"));
                    empresas.add(empresa);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return empresas;
    }
    
    public int getQuantidadeEmpresasCadastradas() {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM empresas;";
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
        List<HashMap<String, Object>> empresas = new ArrayList<>();
        String sql = "SELECT * FROM empresas";
        if (Conexao.getConnection() != null) {
            try {
                Statement statement = Conexao.getConnection().createStatement();
                statement.execute(sql);
                ResultSet resultSet = statement.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> empresa = new HashMap<>();
                    empresa.put("id", resultSet.getInt("id"));
                    empresa.put("nomeFantasia", resultSet.getString("nomeFantasia"));
                    empresa.put("razaoSocial", resultSet.getString("razaoSocial"));
                    empresa.put("cnpj", Formatador.formatoCnpj(resultSet.getString("cnpj")));
                    empresa.put("inscricaoEstadual", resultSet.getString("inscricaoEstadual"));
                    empresa.put("email", resultSet.getString("email"));
                    empresa.put("telefone", resultSet.getString("telefone"));
                    empresa.put("cidade", resultSet.getString("cidade"));
                    empresas.add(empresa);
                }
            } catch (SQLException ex) {
                Logger.getLogger(TicketDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                Conexao.closeConnection();
            }
        }
        return empresas;
    }
}

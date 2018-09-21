package br.com.projetofinal.dao;

import br.com.projetofinal.Util.Formatador;
import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.database.Conexao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
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

    public EmpresaBean obterDadosEmpresa(int id) {
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
                    empresa.setCnpj(Formatador.formatoCnpj(resultSet.getString("cnpj")));
                    empresa.setRazaoSocial(resultSet.getString("razaoSocial"));
                    empresa.setNomeFantasia(resultSet.getString("nomeFantasia"));
                    empresa.setInscricaoEstadual(resultSet.getString("inscricaoEstadual"));
                    empresa.setEmail(resultSet.getString("email"));
                    empresa.setTelefone(Formatador.formatoTelefone(resultSet.getString("telefone")));
                    empresa.setLogradouro(resultSet.getString("logradouro"));
                    empresa.setNumero(resultSet.getString("numero"));
                    empresa.setComplemento(resultSet.getString("complemento"));
                    empresa.setBairro(resultSet.getString("bairro"));
                    empresa.setCep(Formatador.formatoCep(resultSet.getString("cep")));
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
                    empresa.setCnpj(Formatador.formatoCnpj(resultSet.getString("cnpj")));
                    empresa.setRazaoSocial(resultSet.getString("razaoSocial"));
                    empresa.setNomeFantasia(resultSet.getString("nomeFantasia"));
                    empresa.setInscricaoEstadual(resultSet.getString("inscricaoEstadual"));
                    empresa.setEmail(resultSet.getString("email"));
                    empresa.setTelefone(Formatador.formatoTelefone(resultSet.getString("telefone")));
                    empresa.setLogradouro(resultSet.getString("logradouro"));
                    empresa.setNumero(resultSet.getString("numero"));
                    empresa.setComplemento(resultSet.getString("complemento"));
                    empresa.setBairro(resultSet.getString("bairro"));
                    empresa.setCep(Formatador.formatoCep(resultSet.getString("cep")));
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

}

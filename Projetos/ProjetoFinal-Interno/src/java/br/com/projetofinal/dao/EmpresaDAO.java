package br.com.projetofinal.dao;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.database.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Thiago
 */
public class EmpresaDAO {
    
    public int inserir(EmpresaBean empresa){
        Connection conexao = Conexao.getConnection();
        if(conexao != null){
            String sql = "INSERT INTO empresas("
                    + "cnpj, "
                    + "razao_social, "
                    + "nome_fantasia, "
                    + "inscricao_estadual, "
                    + "email, "
                    + "telefone, "
                    + "logradouro, "
                    + "numero, "
                    + "complemento, "
                    + "bairro, "
                    + "cep, "
                    + "cidade, "
                    + "uf, "
                    + "data_ativacao, "
                    + "data_expiracao, "
                    + "validade_certificado)"
                    + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            try{
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
                ps.setDate(quantidade++, empresa.getDataAtivacao());
                ps.setDate(quantidade++, empresa.getDataExpiracao());
                ps.setDate(quantidade++, empresa.getValidadeCertificado());
                ps.execute();
                
                ResultSet resultSet = ps.getGeneratedKeys();
                if(resultSet.next()){
                    return resultSet.getInt(1);
                }
            }catch(SQLException e){
                e.printStackTrace();
            }finally{
                Conexao.closeConnection();
            }
        }
            return -1;
    }
    
    public boolean excluir(int id){
        String sql = "DELETE FROM empresas WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() == 1;
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.closeConnection();
        }
        return false;
    }
    
    public boolean alterar(EmpresaBean empresa){
        String sql = "UPDATE empresas SET "
                    + "cnpj = ?, "
                    + "razao_social = ?, "
                    + "nome_fantasia = ?, "
                    + "inscricao_estadual = ?, "
                    + "email = ?, "
                    + "telefone = ?, "
                    + "logradouro = ?, "
                    + "numero = ?, "
                    + "complemento = ?, "
                    + "bairro = ?, "
                    + "cep = ?, "
                    + "cidade = ?, "
                    + "uf = ?, "
                    + "data_ativacao = ?, "
                    + "data_expiracao = ?, "
                    + "validade_certificado = ?"
                    + "WHERE id = ?";
        try{
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
            ps.setDate(quantidade++, empresa.getDataAtivacao());
            ps.setDate(quantidade++, empresa.getDataExpiracao());
            ps.setDate(quantidade++, empresa.getValidadeCertificado());
            ps.setInt(quantidade++, empresa.getId());
            return ps.executeUpdate() == 1;
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.closeConnection();
        }
        return false;
    }
    
    public EmpresaBean obterPeloId(int id){
        String sql = "SELECT * FROM empresas WHERE id = ?";
        try{
            PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            if(resultSet.next()){
                EmpresaBean empresa = new EmpresaBean();
                empresa.setId(id);
                empresa.setCnpj(resultSet.getString("cnpj"));
                empresa.setRazaoSocial(resultSet.getString("razao_social"));
                empresa.setNomeFantasia(resultSet.getString("nome_fantasia"));
                empresa.setInscricaoEstadual(resultSet.getString("inscricao_estadual"));
                empresa.setEmail(resultSet.getString("email"));
                empresa.setTelefone(resultSet.getString("telefone"));
                empresa.setLogradouro(resultSet.getString("logradouro"));
                empresa.setNumero(resultSet.getString("numero"));
                empresa.setComplemento(resultSet.getString("complemento"));
                empresa.setBairro(resultSet.getString("bairro"));
                empresa.setCep(resultSet.getString("cep"));
                empresa.setCidade(resultSet.getString("cidade"));
                empresa.setUf(resultSet.getString("uf"));
                empresa.setDataAtivacao(resultSet.getDate("data_ativacao"));
                empresa.setDataExpiracao(resultSet.getDate("data_expiracao"));
                empresa.setValidadeCertificado(resultSet.getDate("validade_certificado"));
                return empresa;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.closeConnection();
        }
        return null;
    }
    
    public List<EmpresaBean> obterTodos(){
        List<EmpresaBean> empresas = new ArrayList<>();
        String sql = "SELECT * FROM empresas";
        try{
            Statement st = Conexao.getConnection().createStatement();
            st.execute(sql);
            ResultSet resultSet = st.getResultSet();
            while(resultSet.next()){
                EmpresaBean empresa = new EmpresaBean();
                empresa.setId(resultSet.getInt("id"));
                empresa.setCnpj(resultSet.getString("cnpj"));
                empresa.setRazaoSocial(resultSet.getString("razao_social"));
                empresa.setNomeFantasia(resultSet.getString("nome_fantasia"));
                empresa.setInscricaoEstadual(resultSet.getString("inscricao_estadual"));
                empresa.setEmail(resultSet.getString("email"));
                empresa.setTelefone(resultSet.getString("telefone"));
                empresa.setLogradouro(resultSet.getString("logradouro"));
                empresa.setNumero(resultSet.getString("numero"));
                empresa.setComplemento(resultSet.getString("complemento"));
                empresa.setBairro(resultSet.getString("bairro"));
                empresa.setCep(resultSet.getString("cep"));
                empresa.setCidade(resultSet.getString("cidade"));
                empresa.setUf(resultSet.getString("uf"));
                empresa.setDataAtivacao(resultSet.getDate("data_ativacao"));
                empresa.setDataExpiracao(resultSet.getDate("data_expiracao"));
                empresa.setValidadeCertificado(resultSet.getDate("validade_certificado"));
                empresas.add(empresa);
            }
        }catch(SQLException e){
            e.printStackTrace();
        }finally{
            Conexao.closeConnection();
        }
        return empresas;
    }
}

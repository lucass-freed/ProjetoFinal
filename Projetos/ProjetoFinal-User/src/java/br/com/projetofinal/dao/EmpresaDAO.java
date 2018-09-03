
package br.com.projetofinal.dao;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Thiago
 */
public class EmpresaDAO {
    
    public EmpresaBean obterDadosEmpresa(int id){
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
}

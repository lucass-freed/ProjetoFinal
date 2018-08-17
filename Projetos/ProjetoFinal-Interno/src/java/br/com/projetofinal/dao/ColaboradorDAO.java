package br.com.projetofinal.dao;

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
import java.util.List;

/**
 *
 * @author Lucas Rodrigo
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
                    + "pis FROM alunos;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    ColaboradorBean colaborador = new ColaboradorBean();
                    colaborador.setId(rs.getInt("id"));
                    colaborador.setIdFuncao(rs.getInt("id_funcao"));
                    colaborador.setNome(rs.getString("usuario"));
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
    
}

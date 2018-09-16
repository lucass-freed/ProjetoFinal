package br.com.projetofinal.dao;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.database.Conexao;
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
public class FuncaoDAO {

    public int inserir(FuncaoBean funcao) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO funcoes(nome, setor, descricao) VALUES(?,?,?);";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                ps.setString(1, funcao.getNome());
                ps.setString(2, funcao.getSetor());
                ps.setString(3, funcao.getDescricao());
                ps.execute();
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    return rs.getInt(1);
                }
            } catch (Exception e) {
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
            String sql = "DELETE FROM funcoes WHERE id = ?";
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

    public boolean alterar(FuncaoBean funcao) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            try {
                String sql = "UPDATE funcoes SET "
                        + "nome = ?, "
                        + "setor = ?, "
                        + "descricao = ? "
                        + "WHERE id = ?";
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setString(1, funcao.getNome());
                ps.setString(2, funcao.getSetor());
                ps.setString(3, funcao.getDescricao());
                ps.setInt(4, funcao.getId());
                return ps.executeUpdate() == 1;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return false;
    }

    public List<FuncaoBean> obterFuncoes() {
        List<FuncaoBean> funcoes = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id, nome, setor, descricao FROM funcoes;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    FuncaoBean funcao = new FuncaoBean();
                    funcao.setId(rs.getInt("id"));
                    funcao.setNome(rs.getString("nome"));
                    funcao.setSetor(rs.getString("setor"));
                    funcao.setDescricao(rs.getString("descricao"));
                    funcoes.add(funcao);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return funcoes;
    }

    public FuncaoBean obterFuncaoPeloID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT * FROM funcoes WHERE id = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    FuncaoBean funcao = new FuncaoBean();
                    funcao.setId(rs.getInt("id"));
                    funcao.setNome(rs.getString("nome"));
                    funcao.setSetor(rs.getString("setor"));
                    funcao.setDescricao(rs.getString("descricao"));
                    return funcao;
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return null;
    }

}

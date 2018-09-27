package br.com.projetofinal.dao;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.FuncaoType;
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
public class FuncaoDAO {

    public int inserir(FuncaoBean funcao) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO funcoes(nome, setor, tipo, descricao) VALUES(?,?,?,?);";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                ps.setString(1, funcao.getNome());
                ps.setString(2, funcao.getSetor());
                ps.setString(3, String.valueOf(funcao.getTipo()));
                ps.setString(4, funcao.getDescricao());
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
                        + "tipo = ?, "
                        + "descricao = ? "
                        + "WHERE id = ?";
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setString(1, funcao.getNome());
                ps.setString(2, funcao.getSetor());
                ps.setString(3, String.valueOf(funcao.getTipo()));
                ps.setString(4, funcao.getDescricao());
                ps.setInt(5, funcao.getId());
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
            String sql = "SELECT id, nome, setor, tipo, descricao FROM funcoes;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    FuncaoBean funcao = new FuncaoBean();
                    funcao.setId(rs.getInt("id"));
                    funcao.setNome(rs.getString("nome"));
                    funcao.setSetor(rs.getString("setor"));
                    funcao.setTipo(FuncaoType.getEnum(rs.getString("tipo")));
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
                    funcao.setTipo(FuncaoType.getEnum(rs.getString("tipo")));
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
    
    public int getQuantidadeCadastradas() {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM funcoes;";
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
        List<HashMap<String, Object>> funcoes = new ArrayList<>();
        String sql = "SELECT * FROM funcoes";
        if (Conexao.getConnection() != null) {
            try {
                Statement statement = Conexao.getConnection().createStatement();
                statement.execute(sql);
                ResultSet resultSet = statement.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> funcao = new HashMap<>();
                    funcao.put("id", resultSet.getInt("id"));
                    funcao.put("nome", resultSet.getString("nome"));
                    funcao.put("setor", resultSet.getString("setor"));
                    funcao.put("tipo", resultSet.getString("tipo"));
                    funcoes.add(funcao);
                }
            } catch (SQLException ex) {
                Logger.getLogger(TicketDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                Conexao.closeConnection();
            }
        }
        return funcoes;
    }

}

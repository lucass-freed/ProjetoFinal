package br.com.projetofinal.dao;

import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TagsDAO {
    
    public int inserir(TagBean tag) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO tags(titulo, criticidade) VALUES(?,?);";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                ps.setString(1, tag.getTitulo());
                ps.setString(2, String.valueOf(tag.getCriticidade()));
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
            String sql = "DELETE FROM tags WHERE id = ?";
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

    public boolean alterar(TagBean tag) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            try {
                String sql = "UPDATE funcoes SET "
                        + "titulo = ?, "
                        + "criticidade = ? "
                        + "WHERE id = ?";
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setString(1, tag.getTitulo());
                ps.setString(2, String.valueOf(tag.getCriticidade()));
                ps.setInt(3, tag.getId());
                return ps.executeUpdate() == 1;
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return false;
    }

    public List<TagBean> obterTodos() {
        List<TagBean> tags = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id, titulo, criticidade FROM tags;";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    TagBean tag = new TagBean();
                    tag.setId(rs.getInt("id"));
                    tag.setTitulo(rs.getString("titulo"));
                    tag.setCriticidade(CriticidadeTypes.getEnum(rs.getString("criticidade")));
                    tags.add(tag);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return tags;
    }

    public TagBean obterPeloID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT * FROM tags WHERE id = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    TagBean tag = new TagBean();
                    tag.setId(rs.getInt("id"));
                    tag.setTitulo(rs.getString("titulo"));
                    tag.setCriticidade(CriticidadeTypes.getEnum(rs.getString("criticidade")));
                    return tag;
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
            String sql = "SELECT COUNT(id) FROM tags;";
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
        List<HashMap<String, Object>> tags = new ArrayList<>();
        String sql = "SELECT * FROM tags";
        if (Conexao.getConnection() != null) {
            try {
                Statement statement = Conexao.getConnection().createStatement();
                statement.execute(sql);
                ResultSet resultSet = statement.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> tag = new HashMap<>();
                    tag.put("id", resultSet.getInt("id"));
                    tag.put("titulo", resultSet.getString("titulo"));
                    tag.put("criticidade", resultSet.getString("criticidade"));
                    tags.add(tag);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return tags;
    }

}

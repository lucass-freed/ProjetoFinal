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
 * @author Alunos
 */
public class TagsDAO {

    public List<TagBean> listarTags() {
        List<TagBean> tags = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT id, titulo FROM tags";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    TagBean tag = new TagBean();
                    tag.setId(rs.getInt("id"));
                    tag.setTitulo(rs.getString("titulo"));
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

    public List<HashMap<String, String>> obterTodosParaSelect2(String termo) {
        List<HashMap<String, String>> tags = new ArrayList<HashMap<String, String>>();
        String sql = "SELECT * FROM tags WHERE titulo LIKE ? ORDER BY titulo";
        try {
            PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
            ps.setString(1, "%" + termo + "%");
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            while (resultSet.next()) {
                HashMap<String, String> atual = new HashMap<>();
                atual.put("id", String.valueOf(resultSet.getInt("id")));
                atual.put("text", resultSet.getString("titulo"));
                tags.add(atual);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.closeConnection();
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
}

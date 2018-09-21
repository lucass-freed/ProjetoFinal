/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.dao;

import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.database.Conexao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alunos
 */
public class TagsDAO {
    
    public List<TagBean> listarTags(){
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
    
    
     
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.database.Conexao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alunos
 */
public class UsuarioDAO {
    
  public List<UsuarioBean> obterTodos() {
      List<UsuarioBean> usuarios = new ArrayList<>();
      
      String sql = "SELECT * FROM usuarios";
      
      try{
          Statement st = Conexao.getConnection().createStatement();
          st.execute(sql);
          ResultSet resultSet = st.getResultSet();
          
          while(resultSet.next()) {
              UsuarioBean usuario = new UsuarioBean();
              usuario.setEmpresa(resultSet.getString("empresa"));
              
          }
      }
  }
    
  public int inserir(UsuarioBean usuario) {
     String sql = "INSERT INTO usuario (id_empresa, id_usuario_funcao, usuario,"
             + "senha, nome, cpf, data_nascimento, telefone, email)"
             + " VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?) ";
     try {
         PreparedStatement ps = Conexao.getConnection().prepareStatement(sql,
                 PreparedStatement.RETURN_GENERATED_KEYS);
         int quantidade = 1;
         ps.setInt(quantidade++, usuario.getIdEmpresa());
         
     }catch(SQLException e){
         e.printStackTrace();
     } finally{
         Conexao.closeConnection();
     }
  }  
  
}

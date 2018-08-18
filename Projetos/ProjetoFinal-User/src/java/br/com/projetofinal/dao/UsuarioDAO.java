/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.dao;

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
  
  


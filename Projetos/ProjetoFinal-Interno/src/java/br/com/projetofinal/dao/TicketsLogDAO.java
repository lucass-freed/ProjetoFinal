/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.dao;

import br.com.projetofinal.Util.DateFormatador;
import br.com.projetofinal.bean.TicketLogBean;
import br.com.projetofinal.database.Conexao;
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
 * @author Michelle de Jesus Rogério Created on: 2018-09-17, 10:25:00
 *
 */
public class TicketsLogDAO {

// Métodos direcionados à tab-movimentacoes.jsp
    public int atualizarLog(TicketLogBean ticketLog) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO tickets_log("
                    + "\nid, "
                    + "\nobservacao"
                    + "\nVALUES (?,?)";

            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setInt(quantidade++, ticketLog.getId());
                ps.setString(quantidade++, ticketLog.getDataHoraMovto());
                ps.setString(quantidade++, ticketLog.getObservacao());
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
    
    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> ticketsLog = new ArrayList<>();
        String sql = "SELECT * FROM tickets_log";
        if (Conexao.getConnection() != null) {
            try {
                Statement statement = Conexao.getConnection().createStatement();
                statement.execute(sql);
                ResultSet resultSet = statement.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> ticketLog = new HashMap<>();
                    ticketLog.put("id", resultSet.getInt("id"));
                    ticketLog.put("empresa", new EmpresaDAO().obterPeloID(resultSet.getInt("idEmpresa")).getNomeFantasia());
                    ticketLog.put("titulo", resultSet.getString("titulo"));
                    ticketLog.put("dataAbertura", DateFormatador.formatoBr(resultSet.getDate("dataAbertura")));
               
                    ticketsLog.add(ticketLog);
                }
            } catch (SQLException ex) {
                Logger.getLogger(TicketsLogDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                Conexao.closeConnection();
            }
        }
        return ticketsLog;
    }

}

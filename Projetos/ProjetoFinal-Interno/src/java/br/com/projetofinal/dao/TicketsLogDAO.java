/**
 * @author Michelle de Jesus Rogério Created on: 2018-09-17, 10:25:00
 *
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

public class TicketsLogDAO {

// Métodos direcionados à tab-movimentacoes.jsp
    public int atualizarLog(TicketLogBean ticketLog, int idTicket) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            if (ticketLog.getIdColaborador() > 0) {
                String sql = "INSERT INTO tickets_log("
                        + "\nidTicket, "
                        + "\nidColaborador, "
                        + "\nobservacao) "
                        + "\nVALUES (?,?,?)";

                try {
                    PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                    int quantidade = 1;
                    ps.setInt(quantidade++, idTicket);
                    ps.setInt(quantidade++, ticketLog.getIdColaborador());
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
            } else {
                String sql = "INSERT INTO tickets_log("
                        + "\nidTicket, "
                        + "\nidFuncao, "
                        + "\nobservacao) "
                        + "\nVALUES (?,?,?)";

                try {
                    PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                    int quantidade = 1;
                    ps.setInt(quantidade++, idTicket);
                    ps.setInt(quantidade++, ticketLog.getIdFuncao());
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
        }
        return 0;
    }

    public List<HashMap<String, Object>> obterTodosParaDataTableFromTicket(int idTicket) {
        List<HashMap<String, Object>> ticketsLog = new ArrayList<>();
        String sql = "SELECT * FROM tickets_log WHERE idTicket = ? ORDER BY id DESC limit 3";
        if (Conexao.getConnection() != null) {
            try {
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, idTicket);
                ps.execute();
                ResultSet resultSet = ps.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> ticketLog = new HashMap<>();
                    ticketLog.put("id", resultSet.getInt("id"));
                    if (resultSet.getInt("idColaborador") > 0) {
                        ticketLog.put("movimentador", new ColaboradorDAO().obterColaboradorPorID(resultSet.getInt("idColaborador")).getNome());
                    } else {
                        ticketLog.put("movimentador", new FuncaoDAO().obterFuncaoPeloID(resultSet.getInt("idFuncao")).getNome());
                    }
                    ticketLog.put("dataMovimentacao", DateFormatador.timesStampFormatoBrComHora(resultSet.getTimestamp("dataHoraMvto")));
                    ticketLog.put("obs", resultSet.getString("observacao"));
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

    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> ticketsLog = new ArrayList<>();
        String sql = "SELECT * FROM tickets_log ORDER BY id DESC limit 3";
        if (Conexao.getConnection() != null) {
            try {
                Statement statement = Conexao.getConnection().createStatement();
                statement.execute(sql);
                ResultSet resultSet = statement.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> ticketLog = new HashMap<>();
                    ticketLog.put("id", resultSet.getInt("id"));
                    ticketLog.put("movimentador", new ColaboradorDAO().obterColaboradorPorID(resultSet.getInt("idColaborador")).getNome());
                    ticketLog.put("dataMovimentacao", resultSet.getTimestamp("dataHoraMvto"));
                    ticketLog.put("obs", resultSet.getString("observacao"));
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

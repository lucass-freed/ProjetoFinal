package br.com.projetofinal.dao;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketLogBean;
import br.com.projetofinal.database.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Michelle de Jesus Rogério Created on: 2018-08-27, 11:24:00 Updated
 * on: 2018-08-28, 09:52:00
 */
public class TicketDAO {

    public TicketBean obterTicketPorID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT "
                    + "id, "
                    + "id_empresa, "
                    + "id_colaborador, "
                    + "id_ticket_sazonalidade, "
                    + "situacao, "
                    + "titulo, "
                    + "data_abertura, "
                    + "sistema_operacional, "
                    + "versao_banco, "
                    + "descricao, "
                    + "data_encerramento, "
                    + "procedimento_resolucao FROM tickets";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    TicketBean ticket = new TicketBean();
                    ticket.setId(rs.getInt("id"));
                    ticket.setIdEmpresa(rs.getInt("empresa"));
                    ticket.setIdColaborador(rs.getInt("colaborador"));
                    ticket.setIdSazonalidade(rs.getInt("sazonalidade"));
                    ticket.setIdSituacao(rs.getInt("situacao"));
                    ticket.setTitulo(rs.getString("titulo"));
                    ticket.setDataAbertura(rs.getInt("dataAbertura"));
                    ticket.setSistemaOperacional(rs.getString("sistemaOperacional"));
                    ticket.setVersaoBanco(rs.getString("versaoBanco"));
                    ticket.setDescricao(rs.getString("descricao"));
                    ticket.setDataEncerramento(rs.getInt("dataEncerramento"));
                    ticket.setProcedimentoResolucao(rs.getString("procedimentoResolucao"));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return null;
    }

    public List<TicketBean> listarTickets() {
        List<TicketBean> tickets = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT "
                    + "id, "
                    + "id_empresa, "
                    + "id_colaborador, "
                    + "id_ticket_sazonalidade, "
                    + "situacao, "
                    + "titulo, "
                    + "data_abertura, "
                    + "sistema_operacional, "
                    + "versao_banco, "
                    + "descricao, "
                    + "data_encerramento, "
                    + "procedimento_resolucao FROM tickets";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    TicketBean ticket = new TicketBean();
                    ticket.setId(rs.getInt("id"));
                    ticket.setIdEmpresa(rs.getInt("empresa"));
                    ticket.setIdColaborador(rs.getInt("colaborador"));
                    ticket.setIdSazonalidade(rs.getInt("sazonalidade"));
                    ticket.setIdSituacao(rs.getInt("situacao"));
                    ticket.setTitulo(rs.getString("titulo"));
                    ticket.setDataAbertura(rs.getInt("dataAbertura"));
                    ticket.setSistemaOperacional(rs.getString("sistemaOperacional"));
                    ticket.setVersaoBanco(rs.getString("versaoBanco"));
                    ticket.setDescricao(rs.getString("descricao"));
                    ticket.setDataEncerramento(rs.getInt("dataEncerramento"));
                    ticket.setProcedimentoResolucao(rs.getString("procedimentoResolucao"));
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return tickets;
    }

    public int atualizarLog(TicketLogBean ticketLog) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO tickets_log("
                    + "id"
                    + "data_hora_mvto"
                    + "observacao"
                    + "VALUES (?,CURRENT_TIMESTAMP,?)";

            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 0;
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
}

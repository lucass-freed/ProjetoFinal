package br.com.projetofinal.dao;

import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.database.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author Thiago
 */
public class TicketTagDAO {

    public int inserir(TicketTagBean ticketTag) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO ticket_tags (id_tickets, id_tags) VALUES (?, ?);";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setInt(quantidade++, ticketTag.getIdTickets());
                ps.setInt(quantidade++, ticketTag.getIdTags());
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
}

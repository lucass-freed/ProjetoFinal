package br.com.projetofinal.dao;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.database.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Michelle de Jesus Rogério Created on: 27/08/2018, 11:24:00 Updated
 * on: 28/08/2018, 09:52:00
 */
public class TicketDAO {

    //obter ticket
    //Update
    //Insert
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
                    + "procedimento_resolucao, ";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    TicketBean ticket = new TicketBean();
                    ticket.setId(rs.getInt("id"));
                    ticket.setEmpresa(rs.getInt("empresa"));
                    ticket.setColaborador()
                 
                 
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return null;
    }
}

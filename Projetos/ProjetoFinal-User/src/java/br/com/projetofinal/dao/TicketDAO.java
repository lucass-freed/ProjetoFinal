/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.dao;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Alunos
 */
public class TicketDAO {

    public List<TicketBean> obterResultado(String pesquisa) {
        pesquisa = '%' + pesquisa + '%';
        Connection conexao = Conexao.getConnection();
        List<TicketBean> tickets = new ArrayList<>();
        if (conexao != null) {
            String sql = "SELECT id, titulo, criticidade, situacao, descricao FROM tickets"
                    + "\nWHERE titulo LIKE ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setString(1, pesquisa);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                while (rs.next()) {
                    TicketBean ticket = new TicketBean();
                    ticket.setId(rs.getInt("id"));
                    ticket.setTitulo(rs.getString("titulo"));
                    ticket.setCriticidade(CriticidadeTypes.getEnum(rs.getString("criticidade")));
                    ticket.setStatus(EnumTicketStatusType.getEnum(rs.getString("situacao")));
                    ticket.setDescricao(rs.getString("descricao"));
                    tickets.add(ticket);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return tickets;
    }

     public TicketBean obterTicketPorID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT "
                    + "id, "
                    + "titulo, "
                    + "idEmpresa, "
                    /*+ "id_colaborador, "
                    + "id_ticket_sazonalidade, "*/
                    + "situacao, "
                    + "criticidade, "
                    /* "data_abertura, "
                    + "sistema_operacional, "
                    + "versao_banco, " */
                    + "descricao "
                    /*+ "data_encerramento, "
                    + "procedimento_resolucao"*/
                    + " FROM tickets WHERE id = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    TicketBean ticket = new TicketBean();
                    ticket.setId(rs.getInt("id"));
                    ticket.setTitulo(rs.getString("titulo"));
                    ticket.setIdEmpresa(rs.getInt("idEmpresa"));
                    /*ticket.setIdColaborador(rs.getInt("colaborador"));
                    ticket.setIdSazonalidade(rs.getInt("sazonalidade"));*/
                    ticket.setCriticidade(CriticidadeTypes.getEnum(rs.getString("criticidade")));
                    ticket.setStatus(EnumTicketStatusType.getEnum(rs.getString("situacao")));
                    /* ticket.setTitulo(rs.getString("titulo"));
                    ticket.setDataAbertura(rs.getInt("dataAbertura"));
                    ticket.setSistemaOperacional(rs.getString("sistema_operacional"));
                    ticket.setVersaoBanco(rs.getString("versaoBanco"));*/
                    ticket.setDescricao(rs.getString("descricao"));/*
                    ticket.setDataEncerramento(rs.getInt("dataEncerramento"));
                    ticket.setProcedimentoResolucao(rs.getString("procedimentoResolucao"));*/
                    return ticket;
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

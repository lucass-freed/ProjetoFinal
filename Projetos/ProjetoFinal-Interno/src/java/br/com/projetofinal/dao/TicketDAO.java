package br.com.projetofinal.dao;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.bean.TicketLogBean;
import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
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

    public List<TicketTagBean> obterTagsPorTicket(int idTt) {
        Connection conexao = Conexao.getConnection();
        List<TicketTagBean> ticketsTags = new ArrayList<TicketTagBean>();
        if (conexao != null) {
            String sql = "SELECT"
                    + "\nticket_tags.idTag,"
                    + "\ntags.titulo"
                    + "\nFROM ticket_tags "
                    + "\nJOIN tags ON (ticket_tags.idTag = tags.id)"
                    + "\nWHERE ticket_tags.idTicket = ? ";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, idTt);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                while (rs.next()) {
                    TicketTagBean ticketTag = new TicketTagBean();
                    ticketTag.setIdTags(rs.getInt("ticket_tags.idTag"));
                    TagBean tag = new TagBean();
                    tag.setId(rs.getInt("ticket_tags.idTag"));
                    tag.setTitulo(rs.getString("tags.titulo"));
                    ticketTag.setTag(tag);
                    ticketsTags.add(ticketTag);
                }

            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }

        }
        return ticketsTags;
    }

    public List<TicketBean> listarTickets() {
        List<TicketBean> tickets = new ArrayList<>();
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT "
                    + "id, "
                    + "idEmpresa, "
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
                    ticket.setStatus(EnumTicketStatusType.getEnum(rs.getString("situacao")));
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
                    + "\nid, "
                    + "\nobservacao"
                    + "\nVALUES (?,?)";

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

    public EmpresaBean obterEmpresaPorTicket(int emp) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT"
                    + "\ntickets.idEmpresa,"
                    + "\nempresas.razaoSocial,"
                    + "\nempresas.nomeFantasia,"
                    + "\nempresas.inscricaoEstadual,"
                    + "\nempresas.email,"
                    + "\nempresas.telefone,"
                    + "\nempresas.dataAtivacao,"
                    + "\nempresas.dataExpiracao,"
                    + "\nempresas.validadeCertificado"
                    + "\nFROM tickets"
                    + "\nJOIN empresas ON (tickets.idEmpresa = empresas.id)"
                    + "\nWHERE tickets.id = ? ";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, emp);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                while (rs.next()) {
                    EmpresaBean infoEmpresa = new EmpresaBean();
                    infoEmpresa.setId(rs.getInt("empresas.id"));
                    infoEmpresa.setCnpj(rs.getString("empresas.cnpj"));
                    infoEmpresa.setNomeFantasia(rs.getString("empresas.nomeFantasia"));
                    infoEmpresa.setInscricaoEstadual(rs.getString("empresas.inscricaoEstadual"));
                    infoEmpresa.setEmail(rs.getString("empresas.email"));
                    infoEmpresa.setTelefone(rs.getString("empresas.telefone"));
                    infoEmpresa.setDataAtivacao(rs.getDate("empresas.dataAtivacao"));
                    infoEmpresa.setDataExpiracao(rs.getDate("empresas.dataExpiracao"));
                    infoEmpresa.setValidadeCertificado(rs.getDate("empresas.validadeCertificado"));
                    return infoEmpresa;
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

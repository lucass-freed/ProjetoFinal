package br.com.projetofinal.dao;

import br.com.projetofinal.Util.DateFormatador;
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
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * @author Michelle de Jesus Rogério Created on: 2018-08-27, 11:24:00 Updated
 * on: 2018-08-28, 09:52:00
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TicketDAO {

    public int inserir(TicketBean ticket) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO tickets("
                    + "idEmpresa, "
                    + "id_colaborador, "
                    + "id_ticket_sazonalidade, "
                    + "titulo, "
                    + "criticidade, "
                    + "situacao, "
                    + "descricao, "
                    + "sistemaOperacional, "
                    + "versaoBanco, "
                    + "dataAbertura, "
                    + "dataEncerramento, "
                    + "procedimentoResolucao"
                    + ") VALUES(?,?,?,?,?,?,?,?,?,?,?,?);";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setInt(quantidade++, ticket.getIdEmpresa());
                ps.setInt(quantidade++, ticket.getIdColaborador());
                ps.setInt(quantidade++, ticket.getIdSazonalidade());
                ps.setString(quantidade++, ticket.getTitulo());
                ps.setString(quantidade++, String.valueOf(ticket.getCriticidade()));
                ps.setString(quantidade++, String.valueOf(ticket.getStatus()));
                ps.setString(quantidade++, ticket.getDescricao());
                ps.setString(quantidade++, ticket.getSistemaOperacional());
                ps.setString(quantidade++, ticket.getVersaoBanco());
                ps.setDate(quantidade++, ticket.getDataAbertura());
                ps.setDate(quantidade++, ticket.getDataEncerramento());
                ps.setString(quantidade++, ticket.getProcedimentoResolucao());
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

    public TicketBean obterTicketPorID(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT "
                    + "tck.id, "
                    + "tck.titulo, "
                    + "tck.idEmpresa, "
                    + "tck.id_colaborador, "
                    + "tck.id_ticket_sazonalidade, "
                    + "tck.situacao, "
                    + "tck.criticidade, "
                    + "tck.dataAbertura, "
                    + "tck.sistemaOperacional, "
                    + "tck.versaoBanco, "
                    + "tck.descricao, "
                    + "\ntck.dataEncerramento, "
                    + "\ntck.procedimentoResolucao,"
                    + "\ntck.idEmpresa,"
                    + "\nemp.id,"
                    + "\nemp.razaoSocial,"
                    + "\nemp.nomeFantasia,"
                    + "\nemp.inscricaoEstadual,"
                    + "\nemp.email,"
                    + "\nemp.cnpj,"
                    + "\nemp.telefone,"
                    + "\nemp.dataAtivacao,"
                    + "\nemp.dataExpiracao,"
                    + "\nemp.validadeCertificado"
                    + "\nFROM tickets tck"
                    + "\nJOIN empresas emp ON (tck.idEmpresa = emp.id)"
                    + "\nWHERE tck.id = ? ";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    TicketBean ticket = new TicketBean();
                    ticket.setId(rs.getInt("tck.id"));
                    ticket.setTitulo(rs.getString("tck.titulo"));
                    ticket.setIdEmpresa(rs.getInt("tck.idEmpresa"));
                    ticket.setIdColaborador(rs.getInt("tck.id_colaborador"));
                    ticket.setIdSazonalidade(rs.getInt("tck.id_ticket_sazonalidade"));
                    ticket.setCriticidade(CriticidadeTypes.getEnum(rs.getString("tck.criticidade")));
                    ticket.setStatus(EnumTicketStatusType.getEnum(rs.getString("tck.situacao")));
                    ticket.setTitulo(rs.getString("tck.titulo"));
                    ticket.setDataAbertura(rs.getDate("tck.dataAbertura"));
                    ticket.setSistemaOperacional(rs.getString("tck.sistemaOperacional"));
                    ticket.setVersaoBanco(rs.getString("tck.versaoBanco"));
                    ticket.setDescricao(rs.getString("tck.descricao"));
                    ticket.setDataEncerramento(rs.getDate("tck.dataEncerramento"));
                    ticket.setProcedimentoResolucao(rs.getString("tck.procedimentoResolucao"));

                    EmpresaBean empresa = new EmpresaBean();
                    empresa.setId(rs.getInt("emp.id"));
                    empresa.setCnpj(rs.getString("emp.cnpj"));
                    empresa.setNomeFantasia(rs.getString("emp.nomeFantasia"));
                    empresa.setInscricaoEstadual(rs.getString("emp.inscricaoEstadual"));
                    empresa.setEmail(rs.getString("emp.email"));
                    empresa.setTelefone(rs.getString("emp.telefone"));
                    empresa.setDataAtivacao(rs.getDate("emp.dataAtivacao"));
                    empresa.setDataExpiracao(rs.getDate("emp.dataExpiracao"));
                    empresa.setValidadeCertificado(rs.getDate("emp.validadeCertificado"));

                    ticket.setEmpresa(empresa);
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

    public boolean apagar(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "DELETE FROM tickets WHERE id = ?";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, id);
                return ps.executeUpdate() == 1;
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return false;
    }

    public boolean alterar(TicketBean ticket) {
        String sql = "UPDATE tickets SET "
                + "idEmpresa = ?, "
                + "id_colaborador = ?, "
                + "id_ticket_sazonalidade = ?, "
                + "titulo = ?, "
                + "criticidade = ?, "
                + "situacao = ?, "
                + "descricao = ?, "
                + "sistemaOperacional = ?, "
                + "versaoBanco = ?, "
                + "dataAbertura = ?, "
                + "dataEncerramento = ?, "
                + "procedimentoResolucao = ? "
                + "WHERE id = ?";
        try {
            PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
            int quantidade = 1;
            ps.setInt(quantidade++, ticket.getIdEmpresa());
            ps.setInt(quantidade++, ticket.getIdColaborador());
            ps.setInt(quantidade++, ticket.getIdSazonalidade());
            ps.setString(quantidade++, ticket.getTitulo());
            ps.setString(quantidade++, String.valueOf(ticket.getCriticidade()));
            ps.setString(quantidade++, String.valueOf(ticket.getStatus()));
            ps.setString(quantidade++, ticket.getDescricao());
            ps.setString(quantidade++, ticket.getSistemaOperacional());
            ps.setString(quantidade++, ticket.getVersaoBanco());
            ps.setDate(quantidade++, ticket.getDataAbertura());
            ps.setDate(quantidade++, ticket.getDataEncerramento());
            ps.setString(quantidade++, ticket.getProcedimentoResolucao());
            ps.setInt(quantidade++, ticket.getId());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.closeConnection();
        }
        return false;
    }

    public List<TicketTagBean> obterTagsPorTicket(int idTt) {
        Connection conexao = Conexao.getConnection();
        List<TicketTagBean> ticketsTags = new ArrayList<TicketTagBean>();
        if (conexao != null) {
            String sql = "SELECT"
                    + "\nticket_tags.idTags,"
                    + "\ntags.titulo"
                    + "\nFROM ticket_tags "
                    + "\nJOIN tags ON (ticket_tags.idTags = tags.id)"
                    + "\nWHERE ticket_tags.idTickets = ? ";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql);
                ps.setInt(1, idTt);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                while (rs.next()) {
                    TicketTagBean ticketTag = new TicketTagBean();
                    ticketTag.setIdTags(rs.getInt("ticket_tags.idTags"));
                    TagBean tag = new TagBean();
                    tag.setId(rs.getInt("ticket_tags.idTags"));
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
                    + "tck.id, "
                    + "tck.titulo, "
                    + "tck.idEmpresa, "
                    + "tck.id_colaborador, "
                    + "tck.id_ticket_sazonalidade, "
                    + "tck.situacao, "
                    + "tck.criticidade, "
                    + "tck.dataAbertura, "
                    + "tck.sistemaOperacional, "
                    + "tck.versaoBanco, "
                    + "tck.descricao, "
                    + "\ntck.dataEncerramento, "
                    + "\ntck.procedimentoResolucao,"
                    + "\ntck.idEmpresa,"
                    + "\nemp.id,"
                    + "\nemp.razaoSocial,"
                    + "\nemp.nomeFantasia,"
                    + "\nemp.inscricaoEstadual,"
                    + "\nemp.email,"
                    + "\nemp.cnpj,"
                    + "\nemp.telefone,"
                    + "\nemp.dataAtivacao,"
                    + "\nemp.dataExpiracao,"
                    + "\nemp.validadeCertificado"
                    + "\nFROM tickets tck"
                    + "\nJOIN empresas emp ON (tck.idEmpresa = emp.id)";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                while (rs.next()) {
                    TicketBean ticket = new TicketBean();
                    ticket.setId(rs.getInt("tck.id"));
                    ticket.setTitulo(rs.getString("tck.titulo"));
                    ticket.setIdEmpresa(rs.getInt("tck.idEmpresa"));
                    ticket.setIdColaborador(rs.getInt("tck.id_colaborador"));
                    ticket.setIdSazonalidade(rs.getInt("tck.id_ticket_sazonalidade"));
                    ticket.setCriticidade(CriticidadeTypes.getEnum(rs.getString("tck.criticidade")));
                    ticket.setStatus(EnumTicketStatusType.getEnum(rs.getString("tck.situacao")));
                    ticket.setTitulo(rs.getString("tck.titulo"));
                    ticket.setDataAbertura(rs.getDate("tck.dataAbertura"));
                    ticket.setSistemaOperacional(rs.getString("tck.sistemaOperacional"));
                    ticket.setVersaoBanco(rs.getString("tck.versaoBanco"));
                    ticket.setDescricao(rs.getString("tck.descricao"));
                    ticket.setDataEncerramento(rs.getDate("tck.dataEncerramento"));
                    ticket.setProcedimentoResolucao(rs.getString("tck.procedimentoResolucao"));

                    EmpresaBean empresa = new EmpresaBean();
                    empresa.setId(rs.getInt("emp.id"));
                    empresa.setCnpj(rs.getString("emp.cnpj"));
                    empresa.setNomeFantasia(rs.getString("emp.nomeFantasia"));
                    empresa.setInscricaoEstadual(rs.getString("emp.inscricaoEstadual"));
                    empresa.setEmail(rs.getString("emp.email"));
                    empresa.setTelefone(rs.getString("emp.telefone"));
                    empresa.setDataAtivacao(rs.getDate("emp.dataAtivacao"));
                    empresa.setDataExpiracao(rs.getDate("emp.dataExpiracao"));
                    empresa.setValidadeCertificado(rs.getDate("emp.validadeCertificado"));

                    ticket.setEmpresa(empresa);
                    tickets.add(ticket);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return tickets;
    }

    public int getQuantidadeTicketsConcluidos() {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM tickets WHERE situacao = 'Concluído';";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                if (rs.next()) {
                    return rs.getInt("COUNT(id)");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return 0;
    }

    public int getQuantidadeTicketsEmAndamento() {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM tickets WHERE situacao = 'Em Andamento';";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                if (rs.next()) {
                    return rs.getInt("COUNT(id)");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return 0;
    }

    public int getQuantidadeTicketsPendentes() {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM tickets WHERE situacao = 'Pendente';";
            try {
                Statement st = conexao.createStatement();
                st.execute(sql);
                ResultSet rs = st.getResultSet();
                if (rs.next()) {
                    return rs.getInt("COUNT(id)");
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return 0;
    }

    public List<HashMap<String, Object>> obterTodosParaDataTable() {
        List<HashMap<String, Object>> tickets = new ArrayList<>();
        String sql = "SELECT * FROM tickets";
        if (Conexao.getConnection() != null) {
            try {
                Statement statement = Conexao.getConnection().createStatement();
                statement.execute(sql);
                ResultSet resultSet = statement.getResultSet();
                while (resultSet.next()) {
                    HashMap<String, Object> ticket = new HashMap<>();
                    ticket.put("id", resultSet.getInt("id"));
                    ticket.put("empresa", new EmpresaDAO().obterPeloID(resultSet.getInt("idEmpresa")).getNomeFantasia());
                    ticket.put("titulo", resultSet.getString("titulo"));
                    ticket.put("dataAbertura", DateFormatador.formatoBr(resultSet.getDate("dataAbertura")));
                    ticket.put("dataEncerramento", DateFormatador.formatoBr(resultSet.getDate("dataEncerramento")));
                    ticket.put("situacao", resultSet.getString("situacao"));
                    ticket.put("criticidade", resultSet.getString("criticidade"));
                    tickets.add(ticket);
                }
            } catch (SQLException ex) {
                Logger.getLogger(TicketDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                Conexao.closeConnection();
            }
        }
        return tickets;
    }
    
    
}


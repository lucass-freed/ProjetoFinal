package br.com.projetofinal.dao;

import br.com.projetofinal.Util.DateFormatador;
import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.bean.TagBean;
import br.com.projetofinal.bean.TicketBean;
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

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TicketDAO {

    public int inserir(TicketBean ticket) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO tickets("
                    + "idEmpresa, "
                    + "id_colaborador, "
                    + "id_usuario, "
                    + "id_ticket_sazonalidade, "
                    + "titulo, "
                    + "criticidade, "
                    + "situacao, "
                    + "descricao, "
                    + "dataAbertura, "
                    + "dataEncerramento, "
                    + "procedimentoResolucao"
                    + ") VALUES(?,?,?,?,?,?,?,?,?,?,?);";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 1;
                ps.setInt(quantidade++, ticket.getIdEmpresa());
                ps.setInt(quantidade++, ticket.getIdColaborador());
                ps.setInt(quantidade++, ticket.getIdUsuario());
                ps.setInt(quantidade++, ticket.getIdSazonalidade());
                ps.setString(quantidade++, ticket.getTitulo());
                ps.setString(quantidade++, String.valueOf(ticket.getCriticidade()));
                ps.setString(quantidade++, String.valueOf(ticket.getStatus()));
                ps.setString(quantidade++, ticket.getDescricao());
                ps.setTimestamp(quantidade++, ticket.getDataAbertura());
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
                    + "tck.id, "
                    + "tck.titulo, "
                    + "tck.idEmpresa, "
                    + "tck.id_colaborador, "
                    + "tck.id_ticket_sazonalidade, "
                    + "tck.situacao, "
                    + "tck.criticidade, "
                    + "tck.dataAbertura, "
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
                    ticket.setDataAbertura(rs.getTimestamp("tck.dataAbertura"));
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

    public List<HashMap<String, Object>> obterTodosPendentesParaDataTableUsuario(int id) {
        List<HashMap<String, Object>> ticketsPendentes = new ArrayList<>();
        String sql = "SELECT * FROM tickets WHERE id_usuario = ? AND situacao = 'Pendente'";
        if (Conexao.getConnection() != null) {
            try {
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    HashMap<String, Object> ticketPendentes = new HashMap<>();
                    ticketPendentes.put("id", rs.getInt("id"));
                    ticketPendentes.put("titulo", rs.getString("titulo"));
                    ticketPendentes.put("dataAbertura", DateFormatador.formatoBr(rs.getDate("dataAbertura")));
                    ticketPendentes.put("criticidade", rs.getString("criticidade"));
                    ticketsPendentes.add(ticketPendentes);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return ticketsPendentes;
    }

    public List<HashMap<String, Object>> obterTodosParaDataTableUsuario(int id) {
        List<HashMap<String, Object>> tickets = new ArrayList<>();
        String sql = "SELECT * FROM tickets WHERE id_usuario = ?";
        if (Conexao.getConnection() != null) {
            try {
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
                if (rs.next()) {
                    HashMap<String, Object> ticket = new HashMap<>();
                    ticket.put("id", rs.getInt("id"));
                    ticket.put("titulo", rs.getString("titulo"));
                    ticket.put("dataAbertura", DateFormatador.formatoBr(rs.getDate("dataAbertura")));
                    try {
                        ticket.put("dataEncerramento", DateFormatador.formatoBr(rs.getDate("dataEncerramento")));
                    } catch (Exception e) {
                        ticket.put("dataEncerramento", "xx/xx/xxxx");
                    }
                    ticket.put("criticidade", rs.getString("criticidade"));
                    ticket.put("situacao", rs.getString("situacao"));
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

    public int getQuantidadeTicketsPendentesIDUsuario(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM tickets WHERE id_usuario = ? AND situacao = 'Pendente';";
            try {
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
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

    public int getQuantidadeTicketsConcluidosIDUsuario(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM tickets WHERE id_usuario = ? AND situacao = 'Concluído';";
            try {
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
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

    public int getQuantidadeTicketsEmAndamentoIDUsuario(int id) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "SELECT COUNT(id) FROM tickets WHERE id_usuario = ? AND situacao = 'Em Andamento';";
            try {
                PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
                ps.setInt(1, id);
                ps.execute();
                ResultSet rs = ps.getResultSet();
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

    public List<HashMap<String, String>> obterTodosParaSelect2(int id, String termo) {
        List<HashMap<String, String>> tickets = new ArrayList<HashMap<String, String>>();
        String sql = "SELECT * FROM tickets WHERE id_usuario = ? AND titulo LIKE ? ORDER BY titulo";
        try {
            PreparedStatement ps = Conexao.getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, "%" + termo + "%");
            ps.execute();
            ResultSet resultSet = ps.getResultSet();
            while (resultSet.next()) {
                HashMap<String, String> atual = new HashMap<>();
                atual.put("id", String.valueOf(resultSet.getInt("id")));
                atual.put("text", " [" + resultSet.getInt("id") + "] " + resultSet.getString("titulo"));
                tickets.add(atual);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Conexao.closeConnection();
        }
        return tickets;

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
}

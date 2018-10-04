package br.com.projetofinalJUnit;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TicketDAOJUnitTest {
    
    @Test
    public void inserir() throws NoSuchAlgorithmException {
        Conexao.truncate();

        TicketBean t = new TicketBean();
        t.setIdEmpresa(1);
        t.setIdColaborador(1);
        t.setSazonalidade("dssadsa");
        t.setTitulo("dssadsa");
        t.setCriticidade(CriticidadeTypes.ALTISSIMA);
        t.setStatus(EnumTicketStatusType.CONCLUIDO);
        t.setDescricao("dsadas");
        t.setDataAbertura(Timestamp.valueOf("1993-12-30 00:00:00"));
        t.setDataEncerramento(Timestamp.valueOf("1993-12-30 00:00:01"));
        t.setProcedimentoResolucao("dsadsa");

        int cod = new TicketDAO().inserir(t);
        t.setId(cod);
    }
    
    @Test
    public void obterResultado() {
        Conexao.truncate();
        new TicketDAO().obterResultado("teste");
    }
    
    @Test
    public void obterTicketPorID() {
        Conexao.truncate();
        new TicketDAO().obterTicketPorID(1);
    }
    
    @Test
    public void obterTodosPendentesParaDataTableUsuario() {
        Conexao.truncate();
        new TicketDAO().obterTodosPendentesParaDataTableUsuario(1);
    }
    
    @Test
    public void obterTodosParaDataTableUsuario() {
        Conexao.truncate();
        new TicketDAO().obterTodosParaDataTableUsuario(1);
    }
    
    @Test
    public void getQuantidadeTicketsPendentes() {
        Conexao.truncate();
        new TicketDAO().getQuantidadeTicketsPendentes();
    }
    
    @Test
    public void getQuantidadeTicketsPendentesIDUsuario() {
        Conexao.truncate();
        new TicketDAO().getQuantidadeTicketsPendentesIDUsuario(1);
    }
    
    @Test
    public void getQuantidadeTicketsConcluidosIDUsuario() {
        Conexao.truncate();
        new TicketDAO().getQuantidadeTicketsConcluidosIDUsuario(1);
    }
    
    @Test
    public void getQuantidadeTicketsEmAndamentoIDUsuario() {
        Conexao.truncate();
        new TicketDAO().getQuantidadeTicketsEmAndamentoIDUsuario(1);
    }
    
    @Test
    public void obterTagsPorTicket() {
        Conexao.truncate();
        new TicketDAO().obterTagsPorTicket(1);
    }
}

package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import java.sql.Timestamp;
import static org.junit.Assert.assertNull;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TicketDAOJUnitTest {

    @Test
    public void inserir() {
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
    public void excluir() {
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
        new TicketDAO().apagar(cod);

        assertNull(new TicketDAO().obterTicketPorID(cod));
    }

    @Test
    public void alterar() {
        Conexao.truncate();

        TicketBean t = new TicketBean();
        int cod = new TicketDAO().inserir(t);
        t.setId(cod);
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

        new TicketDAO().alterar(t);
    }

    @Test
    public void buscarPorID() {
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
    public void getQuantidadeTicketsConcluidos() {
        Conexao.truncate();
        new TicketDAO().getQuantidadeTicketsConcluidos();
    }

    @Test
    public void getQuantidadeTicketsEmAndamento() {
        Conexao.truncate();
        new TicketDAO().getQuantidadeTicketsEmAndamento();
    }

    @Test
    public void getQuantidadeTicketsPendentes() {
        Conexao.truncate();
        new TicketDAO().getQuantidadeTicketsPendentes();
    }
    
    @Test
    public void obterResultado() {
        Conexao.truncate();
        new TicketDAO().obterResultado("problema");
    }
    
    @Test
    public void salvarDataResolucao() {
        Conexao.truncate();
        new TicketDAO().salvarDataResolucao(1);
    }
    
    @Test
    public void concluir() {
        Conexao.truncate();
        new TicketDAO().concluir(1, "Resolvido!", "1 hora");
    }
    
    @Test
    public void alterarStatus() {
        Conexao.truncate();
        new TicketDAO().alterarStatus(1, "Em Andamento");
    }
    
    @Test
    public void alterarColaborador() {
        Conexao.truncate();
        new TicketDAO().alterarColaborador(1, 1);
    }
    
    @Test
    public void alterarFuncao() {
        Conexao.truncate();
        new TicketDAO().alterarFuncao(1, 1);
    }
    
    @Test
    public void alterarCriticidade() {
        Conexao.truncate();
        new TicketDAO().alterarCriticidade(1, CriticidadeTypes.ALTISSIMA);
    }
    
    @Test
    public void listarTickets() {
        Conexao.truncate();
        new TicketDAO().listarTickets();
    }
    
    @Test
    public void obterTodosParaDataTable() {
        Conexao.truncate();
        new TicketDAO().obterTodosParaDataTable();
    }
}

package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.TicketDAO;
import br.com.projetofinal.database.Conexao;
import br.com.projetofinal.enumTypes.CriticidadeTypes;
import br.com.projetofinal.enumTypes.EnumTicketStatusType;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import org.junit.Test;


/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TicketDAOJUnitTest {
    
    @Test
    public void inserir() throws NoSuchAlgorithmException {
        //Conexao.truncate();

        TicketBean t = new TicketBean();
        t.setIdEmpresa(1);
        t.setIdColaborador(1);
        t.setIdSazonalidade(1);
        t.setTitulo("dssadsa");
        t.setCriticidade(CriticidadeTypes.ALTISSIMA);
        t.setStatus(EnumTicketStatusType.CONCLUIDO);
        t.setDescricao("dsadas");
        t.setSistemaOperacional("dsaads");
        t.setVersaoBanco("dsadsa");
        t.setDataAbertura(Date.valueOf("1993-12-30"));
        t.setDataEncerramento(Date.valueOf("1993-12-30"));
        t.setProcedimentoResolucao("dsadsa");

        int cod = new TicketDAO().inserir(t);
        t.setId(cod);

        //assertEquals(cod, 1);
        validarIgual(t, new TicketDAO().obterTicketPorID(cod));
    }

    @Test
    public void excluir() throws NoSuchAlgorithmException {
        //Conexao.truncate();

        TicketBean t = new TicketBean();
        t.setIdEmpresa(1);
        t.setIdColaborador(1);
        t.setIdSazonalidade(1);
        t.setTitulo("dssadsa");
        t.setCriticidade(CriticidadeTypes.ALTISSIMA);
        t.setStatus(EnumTicketStatusType.CONCLUIDO);
        t.setDescricao("dsadas");
        t.setSistemaOperacional("dsaads");
        t.setVersaoBanco("dsadsa");
        t.setDataAbertura(Date.valueOf("1993-12-30"));
        t.setDataEncerramento(Date.valueOf("1993-12-30"));
        t.setProcedimentoResolucao("dsadsa");

        int cod = new TicketDAO().inserir(t);
        new TicketDAO().apagar(cod);

        assertNull(new TicketDAO().obterTicketPorID(cod));
    }

    @Test
    public void alterar() throws NoSuchAlgorithmException {
        //Conexao.truncate();

        TicketBean t = new TicketBean();
        int cod = new TicketDAO().inserir(t);
        t.setId(cod);
        t.setIdEmpresa(1);
        t.setIdColaborador(1);
        t.setIdSazonalidade(1);
        t.setTitulo("dssadsa");
        t.setCriticidade(CriticidadeTypes.ALTISSIMA);
        t.setStatus(EnumTicketStatusType.CONCLUIDO);
        t.setDescricao("dsadas");
        t.setSistemaOperacional("dsaads");
        t.setVersaoBanco("dsadsa");
        t.setDataAbertura(Date.valueOf("1993-12-30"));
        t.setDataEncerramento(Date.valueOf("1993-12-30"));
        t.setProcedimentoResolucao("dsadsa");

        new TicketDAO().alterar(t);
        validarIgual(t, new TicketDAO().obterTicketPorID(cod));
    }

    @Test
    public void buscarPorID() {
        //Conexao.truncate();

        TicketBean t = new TicketBean();
        t.setIdEmpresa(1);
        t.setIdColaborador(1);
        t.setIdSazonalidade(1);
        t.setTitulo("dssadsa");
        t.setCriticidade(CriticidadeTypes.ALTISSIMA);
        t.setStatus(EnumTicketStatusType.CONCLUIDO);
        t.setDescricao("dsadas");
        t.setSistemaOperacional("dsaads");
        t.setVersaoBanco("dsadsa");
        t.setDataAbertura(Date.valueOf("1993-12-30"));
        t.setDataEncerramento(Date.valueOf("1993-12-30"));
        t.setProcedimentoResolucao("dsadsa");

        int cod = new TicketDAO().inserir(t);
        t.setId(cod);

        validarIgual(t, new TicketDAO().obterTicketPorID(cod));
    }
    
    @Test
    public void getQuantidadeTicketsConcluidos() {
        //Conexao.truncate();
        
        new TicketDAO().getQuantidadeTicketsConcluidos();
    }
    
    @Test
    public void getQuantidadeTicketsEmAndamento() {
        //Conexao.truncate();
        
        new TicketDAO().getQuantidadeTicketsEmAndamento();
    }
    
    @Test
    public void getQuantidadeTicketsPendentes() {
        //Conexao.truncate();
        
        new TicketDAO().getQuantidadeTicketsPendentes();
    }

    public void validarIgual(TicketBean t1, TicketBean t2) {
        assertEquals(t1.getId(), t2.getId());
        assertEquals(t1.getIdColaborador(), t2.getIdColaborador());
        assertEquals(t1.getIdSazonalidade(), t2.getIdSazonalidade());
        assertEquals(t1.getTitulo(), t2.getTitulo());
        assertEquals(t1.getCriticidade(), t2.getCriticidade());
        assertEquals(t1.getStatus(), t2.getStatus());
        assertEquals(t1.getDescricao(), t2.getDescricao());
        assertEquals(t1.getSistemaOperacional(), t2.getSistemaOperacional());
        assertEquals(t1.getVersaoBanco(), t2.getVersaoBanco());
        assertEquals(t1.getDataAbertura(), t2.getDataAbertura());
        assertEquals(t1.getDataEncerramento(), t2.getDataEncerramento());
        assertEquals(t1.getProcedimentoResolucao(), t2.getProcedimentoResolucao());
    }
    
}
package br.com.projetofinal.JUnit;

import br.com.projetofinal.bean.TicketLogBean;
import br.com.projetofinal.dao.TicketsLogDAO;
import br.com.projetofinal.database.Conexao;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TicketsLogDAOJUnitTest {

    @Test
    public void atualizarLogComColaborador() {
        Conexao.truncate();
        TicketLogBean log = new TicketLogBean();
        log.setIdColaborador(1);
        log.setObservacao("sdaasdsadsadsa");
        
        new TicketsLogDAO().atualizarLog(log, 1);
    }
    
    @Test
    public void atualizarLogComFuncao() {
        Conexao.truncate();
        TicketLogBean log = new TicketLogBean();
        log.setIdFuncao(1);
        log.setObservacao("sdaasdsadsadsa");
        
        new TicketsLogDAO().atualizarLog(log, 1);
    }
    
    @Test
    public void obterTodosParaDataTableFromTicket() {
        Conexao.truncate();
        new TicketsLogDAO().obterTodosParaDataTableFromTicket(1);
    }
    
    @Test
    public void obterTodosParaDataTable() {
        Conexao.truncate();
        new TicketsLogDAO().obterTodosParaDataTable();
    }
}

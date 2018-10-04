package br.com.projetofinalJUnit;

import br.com.projetofinal.bean.TicketTagBean;
import br.com.projetofinal.dao.TicketTagDAO;
import br.com.projetofinal.database.Conexao;
import org.junit.Test;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TicketTagDAOJUnitTest {
    
    @Test
    public void inserir() {
        Conexao.truncate();
        TicketTagBean ticketTag = new TicketTagBean();
        ticketTag.setIdTags(1);
        ticketTag.setIdTickets(1);
        
        new TicketTagDAO().inserir(ticketTag);
    }
}

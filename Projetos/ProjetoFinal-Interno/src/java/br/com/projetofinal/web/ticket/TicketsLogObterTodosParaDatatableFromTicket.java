package br.com.projetofinal.web.ticket;

import br.com.projetofinal.dao.TicketsLogDAO;
import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Michelle de Jesus Rogério (themicaloo@gmail.com)
 * @date 2018-09-17
 */
@WebServlet("/ticketsLog/obtertodosparadatatablefromticket")
public class TicketsLogObterTodosParaDatatableFromTicket extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        HashMap<String, Object> resultado = new HashMap<>();
        List<HashMap<String, Object>> registros = new TicketsLogDAO().obterTodosParaDataTableFromTicket(Integer.parseInt(req.getParameter("idDoTicket")));
        resultado.put("data", registros);
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().print(new Gson().toJson(resultado));
    }
}

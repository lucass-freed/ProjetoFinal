/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.projetofinal.web.regular;

import br.com.projetofinal.bean.TicketBean;
import br.com.projetofinal.dao.TicketDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/index")
public class ConsultaIndex extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
    throws ServletException, IOException {
       
       String pesquisa = req.getParameter("search");    
       List<TicketBean> tickets = new TicketDAO().obterResultado(pesquisa);
       
       req.setAttribute("tickets", tickets);
       
        
       resp.setContentType("text/html;charset=UTF-8");
       req.getRequestDispatcher("/padrao-externo-regular/consulta/index.jsp").include(req, resp);
    }
    
    
    
}

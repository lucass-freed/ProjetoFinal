package br.com.projetofinal.web;

import br.com.projetofinal.bean.UsuarioBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Index", urlPatterns = {""})
public class Index extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getSession().getAttribute("usuario") != null) {
            response.sendRedirect("/externo");
            return;
        }

        response.setContentType("text/html;charset=UTF-8");
        request.setAttribute("title", "Entrar");
        request.getRequestDispatcher("/paginas/index.jsp").include(request, response);
    }

}

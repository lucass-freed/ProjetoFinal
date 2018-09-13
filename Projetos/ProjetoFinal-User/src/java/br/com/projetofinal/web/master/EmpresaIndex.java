package br.com.projetofinal.web.master;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.EmpresaDAO;
import br.com.projetofinal.dao.UsuarioDAO;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thiago
 */
@WebServlet("/empresa-externo")
public class EmpresaIndex extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
        }
        
        int idEmpresa = 0;
        
        List<UsuarioBean> usuarios = new UsuarioDAO().obterUsuarios();
        for (int i = 0; i < usuarios.size(); i++) {
            if(idEmpresa )
            
        }
        int id = Integer.parseInt(req.getParameter("id"));
        EmpresaBean empresa = new EmpresaDAO().obterDadosEmpresa(id);

        req.setAttribute("empresa", empresa);
        req.setAttribute("title", "Cadastro Empresa");
        
        resp.setContentType("text/html;charset=UTF-8");
        req.getRequestDispatcher("/padrao-externo-master/empresa/empresa-index.jsp").include(req, resp);
        
    }

}

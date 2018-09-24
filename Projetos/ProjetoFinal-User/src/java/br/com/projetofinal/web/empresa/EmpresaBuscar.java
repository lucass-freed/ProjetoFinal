package br.com.projetofinal.web.empresa;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.EmpresaDAO;
import com.google.gson.Gson;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Alunos
 */
@WebServlet("/externo/empresa/buscar")
public class EmpresaBuscar extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        UsuarioBean usuario = (UsuarioBean) req.getSession().getAttribute("usuario");
        
        int id = usuario.getIdEmpresa();
        EmpresaBean empresa = new EmpresaDAO().obterDadosEmpresa(id);

        req.setAttribute("empresa", empresa);
        req.setAttribute("title", "Cadastrar Empresa");
        resp.setContentType("application/json");
        resp.getWriter().write(new Gson().toJson(empresa));
    }   
}

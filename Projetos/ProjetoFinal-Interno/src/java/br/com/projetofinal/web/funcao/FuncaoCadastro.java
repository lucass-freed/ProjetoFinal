package br.com.projetofinal.web.funcao;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.dao.FuncaoDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet("/interno/funcoes/cadastro")
public class FuncaoCadastro extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        List<FuncaoBean> funcoes = new FuncaoDAO().obterFuncoes();
        req.setAttribute("funcoes", funcoes);
        
        resp.setContentType("text/html;charset=UTF-8");
        req.setAttribute("title", "Cadastrar Função");
        req.setAttribute("tipo", req.getParameter("tipo") == null ? "" : req.getParameter("tipo"));
        req.getRequestDispatcher("/paginas/funcoes/cadastro/index.jsp").include(req, resp);
    }
}

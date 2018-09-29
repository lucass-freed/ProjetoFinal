package br.com.projetofinal.web.funcao;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.dao.FuncaoDAO;
import br.com.projetofinal.enumTypes.FuncaoType;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet("/interno/funcoes/alterar")
public class FuncaoAlterar extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        
        FuncaoBean funcao = new FuncaoBean();
        funcao.setId(Integer.parseInt(req.getParameter("inputID")));
        funcao.setNome(req.getParameter("inputNome"));
        funcao.setSetor(req.getParameter("inputSetor"));
        funcao.setTipo(FuncaoType.getEnum(req.getParameter("selectTipo")));
        funcao.setDescricao(req.getParameter("inputDescricao"));

        boolean alterou = new FuncaoDAO().alterar(funcao);
        resp.sendRedirect("/interno/funcoes");

    }

}
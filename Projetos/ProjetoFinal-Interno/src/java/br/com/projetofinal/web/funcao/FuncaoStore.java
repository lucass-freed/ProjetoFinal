package br.com.projetofinal.web.funcao;

import br.com.projetofinal.bean.FuncaoBean;
import br.com.projetofinal.dao.FuncaoDAO;
import br.com.projetofinal.enumTypes.FuncaoType;
import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet("/interno/funcoes/store")
public class FuncaoStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        FuncaoBean funcao = new FuncaoBean();
        funcao.setNome(req.getParameter("inputNome"));
        funcao.setSetor(req.getParameter("inputSetor"));
        funcao.setTipo(FuncaoType.getEnum(req.getParameter("selectTipo")));
        funcao.setDescricao(req.getParameter("inputDescricao"));

        int codigo = new FuncaoDAO().inserir(funcao);

        if (codigo > 0) {
            resp.sendRedirect("/interno/funcoes");
        }
    }

}

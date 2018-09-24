package br.com.projetofinal.web.empresa;

import br.com.projetofinal.bean.EmpresaBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Thiago Avancini
 */
@WebServlet("/externo/empresa/editar")
public class EmpresaEditar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EmpresaBean empresa = new EmpresaBean();
        empresa.setId(Integer.parseInt(req.getParameter("id")));
        empresa.setCnpj(req.getParameter("cnpj"));
    }
}

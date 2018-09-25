package br.com.projetofinal.web.empresa;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.dao.EmpresaDAO;
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
@WebServlet("/externo/empresa/store")
public class EmpresaStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EmpresaBean empresa = new EmpresaBean();
        empresa.setId(Integer.parseInt(req.getParameter("id")));
        empresa.setCnpj(req.getParameter("cnpj"));
        empresa.setRazaoSocial(req.getParameter("razaoSocial"));
        empresa.setNomeFantasia(req.getParameter("nomeFantasia"));
        empresa.setInscricaoEstadual(req.getParameter("inscricaoEstadual"));
        empresa.setEmail(req.getParameter("email"));
        empresa.setTelefone(req.getParameter("telefone"));
        empresa.setLogradouro(req.getParameter("logradouro"));
        empresa.setNumero(req.getParameter("numero"));
        empresa.setComplemento(req.getParameter("complemento"));
        empresa.setBairro(req.getParameter("bairro"));
        empresa.setCep(req.getParameter("cep"));
        empresa.setUf(req.getParameter("uf"));
        
        int codigo = new EmpresaDAO().inserir(empresa);
        
        if(codigo > 0){
            resp.sendRedirect("/externo");
        }
    }
}

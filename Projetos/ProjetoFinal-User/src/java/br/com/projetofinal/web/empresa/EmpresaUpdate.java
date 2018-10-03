package br.com.projetofinal.web.empresa;

import br.com.projetofinal.bean.EmpresaBean;
import br.com.projetofinal.dao.EmpresaDAO;
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
 * @author Thiago Avancini
 */
@WebServlet("/externo/empresa/update")
public class EmpresaUpdate extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getSession().getAttribute("usuario") == null){
            resp.sendRedirect("/");
            return;
        }
        
        resp.setContentType("text/html;charset=UTF-8");
        
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
        empresa.setCidade(req.getParameter("cidade"));
        empresa.setUf(req.getParameter("uf").toUpperCase());
        
        String dataAtivacaoS = req.getParameter("dataAtivacaoHidden").replace("/", "-");
        Date dataAtivacao = Date.valueOf(LocalDate.MAX);
        dataAtivacao.setYear(Integer.parseInt(dataAtivacaoS.split("-")[2]));
        dataAtivacao.setMonth(Integer.parseInt(dataAtivacaoS.split("-")[1]));
        dataAtivacao.setDate(Integer.parseInt(dataAtivacaoS.split("-")[0]));
        
        String dataExpiracaoS = req.getParameter("dataExpiracaoHidden").replace("/", "-");
        Date dataExpiracao = Date.valueOf(LocalDate.MAX);
        dataExpiracao.setYear(Integer.parseInt(dataExpiracaoS.split("-")[2]));
        dataExpiracao.setMonth(Integer.parseInt(dataExpiracaoS.split("-")[1]));
        dataExpiracao.setDate(Integer.parseInt(dataExpiracaoS.split("-")[0]));

        empresa.setDataAtivacao(dataAtivacao);
        empresa.setDataExpiracao(dataExpiracao);
        empresa.setId(Integer.parseInt(req.getParameter("id")));
        
        boolean alterar = new EmpresaDAO().alterar(empresa);
        
        resp.sendRedirect("/externo");
    }
}

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
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
@WebServlet("/empresa/alterar")
public class EmpresaAlterar extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        
        EmpresaBean empresa = new EmpresaBean();
        empresa.setId(Integer.parseInt(req.getParameter("inputID")));
        empresa.setCnpj(req.getParameter("inputCNPJ"));
        empresa.setRazaoSocial(req.getParameter("inputRazaoSocial"));
        empresa.setNomeFantasia(req.getParameter("inputNomeFantasia"));
        empresa.setInscricaoEstadual(req.getParameter("inputIE"));
        empresa.setEmail(req.getParameter("inputEmail"));
        empresa.setTelefone(req.getParameter("inputPhone"));
        empresa.setLogradouro(req.getParameter("inputLogradouro"));
        empresa.setNumero(req.getParameter("inputNumero"));
        empresa.setComplemento(req.getParameter("inputComplemento"));
        empresa.setBairro(req.getParameter("inputBairro"));
        empresa.setCep(req.getParameter("inputCEP"));
        empresa.setCidade(req.getParameter("inputCidade"));
        empresa.setUf(req.getParameter("selectUf").toUpperCase());
        
        String dataAtivacaoS = req.getParameter("inputDataAtivacao").replace("/", "-");
        Date dataAtivacao = Date.valueOf(LocalDate.MAX);
        dataAtivacao.setYear(Integer.parseInt(dataAtivacaoS.split("-")[2]));
        dataAtivacao.setMonth(Integer.parseInt(dataAtivacaoS.split("-")[1]));
        dataAtivacao.setDate(Integer.parseInt(dataAtivacaoS.split("-")[0]));
        
        String dataExpiracaoS = req.getParameter("inputDataExpiracao").replace("/", "-");
        Date dataExpiracao = Date.valueOf(LocalDate.MAX);
        dataExpiracao.setYear(Integer.parseInt(dataExpiracaoS.split("-")[2]));
        dataExpiracao.setMonth(Integer.parseInt(dataExpiracaoS.split("-")[1]));
        dataExpiracao.setDate(Integer.parseInt(dataExpiracaoS.split("-")[0]));

        empresa.setDataAtivacao(dataAtivacao);
        empresa.setDataExpiracao(dataExpiracao);

        boolean alterou = new EmpresaDAO().alterar(empresa);

    }

}

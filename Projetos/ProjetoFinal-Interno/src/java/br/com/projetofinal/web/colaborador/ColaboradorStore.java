package br.com.projetofinal.web.colaborador;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import br.com.projetofinal.dao.FuncaoDAO;
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
@WebServlet("/interno/cadastro/store")
public class ColaboradorStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        ColaboradorBean colaborador = new ColaboradorBean();
        colaborador.setIdFuncao(Integer.parseInt(req.getParameter("comboBoxFuncao")));
        colaborador.setUsuario(req.getParameter("inputUsuario"));
        try {
            colaborador.setSenha(new SHA512Metodos().criptografarSenha(req.getParameter("inputSenha")));
        } catch (Exception e) {
            e.printStackTrace();
        }
        colaborador.setNome(req.getParameter("inputNome") + " " + req.getParameter("inputSobrenome"));
        colaborador.setCpf(req.getParameter("inputCPF"));
        
        String dataNascimentoS = req.getParameter("inputDataNascimento").replace("/", "-");
        Date dataNascimento = Date.valueOf(LocalDate.MAX);
        dataNascimento.setYear(Integer.parseInt(dataNascimentoS.split("-")[2]));
        dataNascimento.setMonth(Integer.parseInt(dataNascimentoS.split("-")[1]));
        dataNascimento.setDate(Integer.parseInt(dataNascimentoS.split("-")[0]));
        
        colaborador.setDataNascimento(dataNascimento);
        colaborador.setCtps(req.getParameter("inputCTPS"));
        colaborador.setPis(req.getParameter("inputPIS"));
        colaborador.setTelefone(req.getParameter("inputTelefone"));
        colaborador.setEmail(req.getParameter("inputEmail"));
        colaborador.setFuncao(new FuncaoDAO().obterFuncaoPeloID(Integer.parseInt(req.getParameter("comboBoxFuncao"))));
        colaborador.setCidade(req.getParameter("inputCidade"));
        colaborador.setUf(req.getParameter("selectUf").toUpperCase());
        
        String dataAdmissaoS = req.getParameter("inputDataAdmissao").replace("/", "-");
        Date dataAdmissao = Date.valueOf(LocalDate.MAX);
        dataAdmissao.setYear(Integer.parseInt(dataAdmissaoS.split("-")[2]));
        dataAdmissao.setMonth(Integer.parseInt(dataAdmissaoS.split("-")[1]));
        dataAdmissao.setDate(Integer.parseInt(dataAdmissaoS.split("-")[0]));
        
        colaborador.setDataAdmissao(dataAdmissao);
        colaborador.setCep(req.getParameter("inputCEP"));
        colaborador.setBairro(req.getParameter("inputBairro"));
        colaborador.setLogradouro(req.getParameter("inputLogradouro"));
        colaborador.setNumero(req.getParameter("inputNumero"));
        colaborador.setComplemento(req.getParameter("inputComplemento"));
        colaborador.setMaster(false);
        
        int codigo = 0;
        try {
            codigo = new ColaboradorDAO().inserir(colaborador);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        if (codigo > 0) {
            resp.sendRedirect("/interno/colaboradores");
        }
    }

}

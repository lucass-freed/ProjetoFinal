package br.com.projetofinal.web.usuario;

import br.com.projetofinal.bean.UsuarioBean;
import br.com.projetofinal.dao.FuncaoDAO;
import br.com.projetofinal.dao.UsuarioDAO;
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
@WebServlet("/colaborador/alterar")
public class UsuarioAlterar extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }
        resp.setContentType("text/html;charset=UTF-8");
        UsuarioBean usuario = new UsuarioBean();
        usuario.setId(Integer.parseInt(req.getParameter("inputID")));
        usuario.setIdEmpresa(Integer.parseInt(req.getParameter("inputIDEmpresa")));
        usuario.setIdFuncao(Integer.parseInt(req.getParameter("comboBoxFuncao")));
        usuario.setUsuario(req.getParameter("inputUsuario"));
        usuario.setSenha(req.getParameter("inputSenha"));
        usuario.setNome(req.getParameter("inputNomeCompleto"));
        usuario.setCpf(req.getParameter("inputCPF"));
        
        String dataNascimentoS = req.getParameter("inputDataNascimento").replace("/", "-");
        Date dataNascimento = Date.valueOf(LocalDate.MAX);
        dataNascimento.setYear(Integer.parseInt(dataNascimentoS.split("-")[2]));
        dataNascimento.setMonth(Integer.parseInt(dataNascimentoS.split("-")[1]));
        dataNascimento.setDate(Integer.parseInt(dataNascimentoS.split("-")[0]));
        
        usuario.setDataNascimento(dataNascimento);
        usuario.setTelefone(req.getParameter("inputTelefone"));
        usuario.setEmail(req.getParameter("inputEmail"));
        usuario.setFuncao(new FuncaoDAO().obterFuncaoPeloID(Integer.parseInt(req.getParameter("comboBoxFuncao"))));
        usuario.setMaster(false);
        
        try {
            boolean alterou = new UsuarioDAO().alterar(usuario);
        } catch (Exception e) {
            e.printStackTrace();
        }
        resp.sendRedirect("/externo/usuarios");

    }

}

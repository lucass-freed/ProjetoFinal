package br.com.projetofinal.web.usuario;

import br.com.projetofinal.Util.SHA512Metodos;
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
@WebServlet("/externo/usuario/store")
public class UsuarioStore extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getSession().getAttribute("usuario") == null) {
            resp.sendRedirect("/");
            return;
        }

        UsuarioBean usuario = new UsuarioBean();
        UsuarioBean usuarioSessao = (UsuarioBean) req.getSession().getAttribute("usuario");
        
        usuario.setIdEmpresa(usuarioSessao.getIdEmpresa());
        usuario.setIdFuncao(Integer.parseInt(req.getParameter("comboBoxFuncao")));
        usuario.setUsuario(req.getParameter("inputUsuario"));
        try {
            usuario.setSenha(new SHA512Metodos().criptografarSenha(req.getParameter("inputSenha")));
        } catch (Exception e) {
            e.printStackTrace();
        }
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
        
        int codigo = 0;
        try {
            codigo = new UsuarioDAO().inserir(usuario);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        if (codigo > 0) {
            resp.sendRedirect("/externo/usuarios");
        }
    }

}
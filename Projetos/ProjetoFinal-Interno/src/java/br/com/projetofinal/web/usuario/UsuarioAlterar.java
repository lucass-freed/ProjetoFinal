package br.com.projetofinal.web.usuario;

import br.com.projetofinal.Util.SHA512Metodos;
import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.dao.ColaboradorDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/usuario/update"})
public class UsuarioAlterar extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("usuario") == null) {
            response.sendRedirect("/");
        }
        try {
            ColaboradorBean colaborador = (ColaboradorBean) request.getSession().getAttribute("usuario");
            colaborador.setSenha(new SHA512Metodos().criptografarSenha(request.getParameter("password")));
            boolean alterou = new ColaboradorDAO().alterar(colaborador);

            response.sendRedirect("/interno/perfil");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}

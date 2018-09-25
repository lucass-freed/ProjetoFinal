package br.com.projetofinal.Util.email;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class EmailPadroesAPI {

    public static void alterarSenha(String emailEnviar, String nome) {
        EnviarEmail enviar = new EnviarEmail();
        StringBuilder texto = new StringBuilder();
        enviar.setEmailDestinatario(emailEnviar);
        enviar.setAssunto("FlowDesk - Alteração de Senha");
        texto.append("<tr>");
        texto.append("<td align='center' style='box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2)'>");
        texto.append("<center style='width:100%'>");
        texto.append("<table border='0' class='x_phoenix-email-container' cellspacing='0' cellpadding='0' width='512' bgcolor='#FFFFFF' ");
        texto.append("margin:0 auto; max-width:512px; width:inherit'>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td bgcolor='#F6F8FA' style='background-color:#3e8ef7; padding:12px; border-bottom:1px solid #ECECEC'>");
        texto.append("<table border='0' cellspacing='0' cellpadding='0' width='100%' style='width:100%!important; min-width:100%!important'>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td><img style='max-width: 25px;max-height: 25px;' src=\"data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MDggNTA4IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MDggNTA4OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPGNpcmNsZSBzdHlsZT0iZmlsbDojODREQkZGOyIgY3g9IjI1NCIgY3k9IjI1NCIgcj0iMjU0Ii8+CjxnPgoJPHBhdGggc3R5bGU9ImZpbGw6I0ZGRkZGRjsiIGQ9Ik00NjIuNCwyNThsLTU4LTU4TDM0NiwyNThoNDAuNGMwLDM1LjItMTMuNiw2OC40LTM4LjgsOTMuNmMtMjQuOCwyNC44LTU4LDM4LjgtOTMuNiwzOC44ICAgYy0zNi40LDAtNjkuNi0xNC44LTkzLjYtMzguOGwtMjUuMiwyNS4ybDAsMGMxNS4yLDE1LjIsMzMuMiwyNy42LDUzLjIsMzZzNDIsMTMuMiw2NS4yLDEzLjJjNDQuOCwwLDg3LjItMTcuNiwxMTguOC00OS4yICAgYzMyLTMxLjYsNDkuNi03My42LDQ5LjYtMTE4LjhINDYyLjR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRkZGRkZGOyIgZD0iTTEyMiwyNThjMC03Mi44LDU5LjItMTMyLDEzMi0xMzJjMzYuNCwwLDY5LjYsMTQuOCw5My42LDM4LjhsMjUuMi0yNS4yICAgYy0zMC40LTMwLjQtNzIuNC00OS4yLTExOC44LTQ5LjJjLTkyLjQsMC0xNjgsNzUuMi0xNjgsMTY4SDQ1LjZsMCwwbDU4LDU4TDE2MiwyNThIMTIyeiIvPgo8L2c+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiMzMjRBNUU7IiBwb2ludHM9IjM0NCwyMjQuOCAyNzIsMjI0LjggMjkzLjYsODkuNiAxNjQsMjgzLjIgMjM2LDI4My4yIDIxNC40LDQxOC40ICIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K\"></td>");
        texto.append("<td align='left' valign='middle' style='font-size:20px; font-weight:700; color: white'>FlowDesk</td>");
        texto.append("</tr>");
        texto.append("</tbody>");
        texto.append("</table>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td>");
        texto.append("<table border='0' cellspacing='0' cellpadding='0' width='100%' style=''>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td style='padding:20px 24px 32px 24px'>");
        texto.append("<table border='0' cellspacing='0' cellpadding='0' width='100%' style=''>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<h2 style='margin:0; color:#262626; font-weight:700; font-size:20px; line-height:1.2'>");
        texto.append("Olá, " + nome + "!</h2>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("Estamos confirmando uma alteração nos dados da sua conta.</p>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        DateFormat df = new SimpleDateFormat("yyyy/MM/dd às HH:mm:ss");
        Date date = new Date();
        texto.append("A sua senha foi alterada em " + df.format(date) + ".");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("Obrigado por usar nosso sistema.</p>");
        texto.append("Atenciosamente, Equipe FlowDesk.</p>");
        texto.append("</tr>");
        texto.append("</tbody>");
        enviar.setMsg(texto.toString());
        boolean enviou = enviar.enviarGmail();
        
    }
    
    public static void redefinirSenha(String emailEnviar, String nome, String linkRedefinir) {
        EnviarEmail enviar = new EnviarEmail();
        enviar.setEmailDestinatario(emailEnviar);
        enviar.setAssunto("FlowDesk - Redefinição de Senha");
        StringBuilder texto = new StringBuilder();
        texto.append("<tbody'>");
        texto.append("<tr>");
        texto.append("<td align='center' style='box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2)'>");
        texto.append("<center style='width:100%'>");
        texto.append("<table border='0' class='x_phoenix-email-container' cellspacing='0' cellpadding='0' width='512' bgcolor='#FFFFFF' ");
        texto.append("margin:0 auto; max-width:512px; width:inherit'>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td bgcolor='#F6F8FA' style='background-color:#3e8ef7; padding:12px; border-bottom:1px solid #ECECEC'>");
        texto.append("<table border='0' cellspacing='0' cellpadding='0' width='100%' style='width:100%!important; min-width:100%!important'>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td><img style='max-width: 25px;max-height: 25px;' src=\"data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTkuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iTGF5ZXJfMSIgeD0iMHB4IiB5PSIwcHgiIHZpZXdCb3g9IjAgMCA1MDggNTA4IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCA1MDggNTA4OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSIgd2lkdGg9IjUxMnB4IiBoZWlnaHQ9IjUxMnB4Ij4KPGNpcmNsZSBzdHlsZT0iZmlsbDojODREQkZGOyIgY3g9IjI1NCIgY3k9IjI1NCIgcj0iMjU0Ii8+CjxnPgoJPHBhdGggc3R5bGU9ImZpbGw6I0ZGRkZGRjsiIGQ9Ik00NjIuNCwyNThsLTU4LTU4TDM0NiwyNThoNDAuNGMwLDM1LjItMTMuNiw2OC40LTM4LjgsOTMuNmMtMjQuOCwyNC44LTU4LDM4LjgtOTMuNiwzOC44ICAgYy0zNi40LDAtNjkuNi0xNC44LTkzLjYtMzguOGwtMjUuMiwyNS4ybDAsMGMxNS4yLDE1LjIsMzMuMiwyNy42LDUzLjIsMzZzNDIsMTMuMiw2NS4yLDEzLjJjNDQuOCwwLDg3LjItMTcuNiwxMTguOC00OS4yICAgYzMyLTMxLjYsNDkuNi03My42LDQ5LjYtMTE4LjhINDYyLjR6Ii8+Cgk8cGF0aCBzdHlsZT0iZmlsbDojRkZGRkZGOyIgZD0iTTEyMiwyNThjMC03Mi44LDU5LjItMTMyLDEzMi0xMzJjMzYuNCwwLDY5LjYsMTQuOCw5My42LDM4LjhsMjUuMi0yNS4yICAgYy0zMC40LTMwLjQtNzIuNC00OS4yLTExOC44LTQ5LjJjLTkyLjQsMC0xNjgsNzUuMi0xNjgsMTY4SDQ1LjZsMCwwbDU4LDU4TDE2MiwyNThIMTIyeiIvPgo8L2c+Cjxwb2x5Z29uIHN0eWxlPSJmaWxsOiMzMjRBNUU7IiBwb2ludHM9IjM0NCwyMjQuOCAyNzIsMjI0LjggMjkzLjYsODkuNiAxNjQsMjgzLjIgMjM2LDI4My4yIDIxNC40LDQxOC40ICIvPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K\"></td>");
        texto.append("<td align='left' valign='middle' style='font-size:20px; font-weight:700; color: white'>FlowDesk</td>");
        texto.append("</tr>");
        texto.append("</tbody>");
        texto.append("</table>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td>");
        texto.append("<table border='0' cellspacing='0' cellpadding='0' width='100%' style=''>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td style='padding:20px 24px 32px 24px'>");
        texto.append("<table border='0' cellspacing='0' cellpadding='0' width='100%' style=''>");
        texto.append("<tbody>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<h2 style='margin:0; color:#262626; font-weight:700; font-size:20px; line-height:1.2'>");
        texto.append("Olá, " + nome + "!</h2>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("Iremos ajudar você à recuperar sua conta.</p>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("Para redefinir a sua senha em nosso sistema, clique <a href='$url + '/interno/redefinirsenha'");
        texto.append("text-decoration:none'>aqui</a>. ");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("O link é válido por 24 horas, portanto, utilize-o imediatamente.</p>");
        texto.append("</td>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("</tr>");
        texto.append("<tr>");
        texto.append("<td style='padding-bottom:20px'>");
        texto.append("<p style='margin:0; color:#4C4C4C; font-weight:400; font-size:16px; line-height:1.25'>");
        texto.append("Obrigado por usar nosso sistema.</p>");
        texto.append("Atenciosamente, Equipe FlowDesk.</p>");
        texto.append("</tr>");
        texto.append("</tbody>");
        enviar.setMsg(texto.toString());
        boolean enviou = enviar.enviarGmail();
    }

}

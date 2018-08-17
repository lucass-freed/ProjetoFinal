package br.com.projetofinal.dao;

import br.com.projetofinal.bean.ColaboradorBean;
import br.com.projetofinal.database.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Lucas Rodrigo
 */
public class ColaboradorDAO {
    
    public int inserir(ColaboradorBean colaborador) {
        Connection conexao = Conexao.getConnection();
        if (conexao != null) {
            String sql = "INSERT INTO colaborador("
                    + "id, "
                    + "id_colaborador_funcao, "
                    + "usuario,"
                    + "senha,"
                    + "nome,"
                    + "cpf,"
                    + "data_nascimento,"
                    + "telefone,"
                    + "email,"
                    + "rua,"
                    + "numero,"
                    + "complemento,"
                    + "bairro,"
                    + "cep,"
                    + "cidade,"
                    + "uf,"
                    + "data_admissao,"
                    + "ctps,"
                    + "pis)"
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            try {
                PreparedStatement ps = conexao.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
                int quantidade = 0;
                ps.setInt(quantidade++, colaborador.getId());
                ps.setString(quantidade++, colaborador.getUsuario());
                ps.
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                Conexao.closeConnection();
            }
        }
        return 0;
    }
    
}

package br.com.projetofinal.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class Conexao {

    
    private static String HOST = "jdbc:mysql://aaw557cbc0p3ns.c0cukv5mwu0b.us-east-2.rds.amazonaws.com:3306/ebdb";
    private static String USER = "administrador";
    private static String PASSWORD = "Tes123te";
    
    /*
    private static final String HOST = "jdbc:mysql://localhost/projeto_final_banco";
    private static String USER = "root";
    private static String PASSWORD = "";
    */
    
    private static final String CLASS = "com.mysql.jdbc.Driver";
    private static Connection conexao;

    public static Connection getConnection() {
        try {
            Class.forName(CLASS);
            conexao = DriverManager.getConnection(HOST, USER, PASSWORD);
            return conexao;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void closeConnection() {
        try {
            conexao.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void truncate() {
        if (conexao != null) {
            try {
                Statement st = conexao.createStatement();
                st.addBatch("SET FOREIGN_KEY_CHECKS = 0;");
                st.addBatch("TRUNCATE TABLE funcoes;");
                st.addBatch("TRUNCATE TABLE colaboradores;");
                st.addBatch("TRUNCATE TABLE empresas;");
                st.addBatch("TRUNCATE TABLE usuarios;");
                st.addBatch("TRUNCATE TABLE tickets_criticidade;");
                st.addBatch("TRUNCATE TABLE tickets_log;");
                st.addBatch("TRUNCATE TABLE tickets_sazonalidade;");
                st.addBatch("TRUNCATE TABLE tickets;");
                st.addBatch("TRUNCATE TABLE tags;");
                st.addBatch("TRUNCATE TABLE ticket_tags;");
                st.addBatch("TRUNCATE TABLE empresas;");
                st.addBatch("SET FOREIGN_KEY_CHECKS = 1;");
                st.executeBatch();
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                closeConnection();
            }
        }
    }

}

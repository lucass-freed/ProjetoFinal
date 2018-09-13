package br.com.projetofinal.Util;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHA512Metodos {
    
    public String criptografarSenha(String senha) throws NoSuchAlgorithmException {
        String input = senha;

        MessageDigest objSHA = MessageDigest.getInstance("SHA-512");
        byte[] bytSHA = objSHA.digest(input.getBytes());
        BigInteger intNumber = new BigInteger(1, bytSHA);
        String strHashCode = intNumber.toString(16);

        while (strHashCode.length() < 128) {
            strHashCode = "0" + strHashCode;
        }
        return strHashCode;
    }
    
    public boolean compararSenha(String senhaCriptografada, String senhaInformar) {
        return senhaCriptografada.equals(senhaInformar);
    }
    
}
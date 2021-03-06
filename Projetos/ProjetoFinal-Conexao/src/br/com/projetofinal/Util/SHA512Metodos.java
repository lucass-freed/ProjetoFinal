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
        MessageDigest objSHA = MessageDigest.getInstance("SHA-512");
        byte[] bytSHA = objSHA.digest(senha.getBytes());
        BigInteger intNumber = new BigInteger(1, bytSHA);
        String strHashCode = intNumber.toString(16);

        while (strHashCode.length() < 128) {
            strHashCode = "0" + strHashCode;
        }
        return strHashCode.toUpperCase();
    }

    public boolean compararSenha(String senhaCriptografada, String senhaInformar) throws NoSuchAlgorithmException {
        return senhaCriptografada.equals(criptografarSenha(senhaInformar));
    }

}

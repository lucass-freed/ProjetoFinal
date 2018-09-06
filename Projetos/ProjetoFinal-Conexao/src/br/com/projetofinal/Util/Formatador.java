package br.com.projetofinal.Util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Thiago
 */
public class Formatador {
    
    public static String formatoCPF(String cpf) {
        Pattern patternCpf = Pattern.compile("(\\d{3})(\\d{3})(\\d{3})(\\d{2})");
        Matcher matcher = patternCpf.matcher(cpf);
        if (matcher.matches()){ 
            cpf = matcher.replaceAll("$1.$2.$3-$4");
        }
        return cpf;
    }
    
    public static String formatoCnpj(String cnpj){
        Pattern patternCnpj = Pattern.compile("(\\d{2})(\\d{3})(\\d{3})(\\d{4})(\\d{2})");
        Matcher matcher = patternCnpj.matcher(cnpj);
        if(matcher.matches()){
            cnpj = matcher.replaceAll("$1.$2.$3/$4-$5");
        }
        return cnpj;
    }
    
    public static String formatoTelefone(String telefone){
        Pattern patternTelefone = Pattern.compile("(\\d{2})(\\d{4})(\\d{4})");
        Matcher matcher = patternTelefone.matcher(telefone);
        if(matcher.matches()){
            telefone = matcher.replaceAll("($1)$2-$3");
        }
        return telefone;
    }
    
    public static String formatoCep(String cep){
        Pattern patternCep = Pattern.compile("(\\d{5})(\\d{3})");
        Matcher matcher = patternCep.matcher(cep);
        if(matcher.matches()){
            cep = matcher.replaceAll("$1-$2");
        }
        return cep;
    }
}

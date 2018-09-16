package br.com.projetofinal.Util;

import java.math.BigDecimal;
import java.text.NumberFormat;
import java.util.Locale;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class NumberFormato {

    @SuppressWarnings("all")
    public String f(Object resultado) {
        BigDecimal bigbug = new BigDecimal(resultado.toString());
        BigDecimal refenrencias_ao_major = bigbug.setScale(2, 6);
        String formatado = NumberFormat.getNumberInstance(Locale.GERMANY).format(refenrencias_ao_major);
        return formatado;
    }
}

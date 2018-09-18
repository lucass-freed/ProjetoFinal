package br.com.projetofinal.Util;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author Professor
 */
public class DateFormatador {
    public static String formatoBr(Date data){
        return new SimpleDateFormat("dd/MM/yyyy").format(data);
    }
}

package br.com.projetofinal.Util;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import javax.swing.text.DateFormatter;

/**
 *
 * @author Professor
 */
public class DateFormatador {
    public static String formatoBr(Date data){
        return new SimpleDateFormat("dd/MM/yyyy").format(data);
    }
}

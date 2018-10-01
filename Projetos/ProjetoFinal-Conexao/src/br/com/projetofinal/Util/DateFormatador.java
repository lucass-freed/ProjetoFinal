package br.com.projetofinal.Util;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 *
 * @author Professor
 */
public class DateFormatador {
    public static String formatoBr(Date data){
        return new SimpleDateFormat("dd/MM/yyyy").format(data);
    }
    
    public static String timesStampFormatoBrComHora(Timestamp data){
        if(data == null){
            return "";
        }
        return new SimpleDateFormat("dd/MM/yyyy").format(data) + " às " + new SimpleDateFormat("HH:mm").format(data);
    }
    
    public static String timesStampFormatoBrSemHora(Timestamp data){
        return new SimpleDateFormat("dd/MM/yyyy").format(data);
    }
}

package br.com.projetofinal.Util;

import org.joda.time.DateTime;
import org.joda.time.Days;
import org.joda.time.Hours;
import org.joda.time.Minutes;
import org.joda.time.Seconds;

/**
 *
 * @author Lucas Rodrigo Frederico (lucassfreed@hotmail.com)
 */
public class TempoFormatador {

    public static String formatarTempo(DateTime data1, DateTime data2) {
        int dias = Days.daysBetween(data1, data2).getDays();
        int horas = Hours.hoursBetween(data1, data2).getHours() % 24;
        int minutos = Minutes.minutesBetween(data1, data2).getMinutes() % 60;
        int segundos = Seconds.secondsBetween(data1, data2).getSeconds() % 60;

        StringBuilder texto = new StringBuilder();
        if (dias != 0) {
            if (dias == 1) {
                texto.append(dias).append(" dia");
            } else {
                texto.append(dias).append(" dias");
            }
        } else if (horas != 0) {
            if (horas == 1) {
                texto.append(horas).append(" hora");
            } else {
                texto.append(horas).append(" horas");
            }
        } else if (minutos != 0) {
            if (minutos == 1) {
                texto.append(minutos).append(" minuto");
            } else {
                texto.append(minutos).append(" minutos");
            }
        } else if (segundos != 0) {
            if (segundos == 1) {
                texto.append(segundos).append(" segundo");
            } else {
                texto.append(segundos).append(" segundos");
            }
        }

        return texto.toString();
    }

}

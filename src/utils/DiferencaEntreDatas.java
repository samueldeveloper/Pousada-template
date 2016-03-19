package utils;

import java.util.Calendar;
import java.util.Date;

public class DiferencaEntreDatas {

	public static long DiferencaDatas(String dataInicial, String dataFinal){  
	      
	    Date data1 = new Date(), data2 = new Date();  
	      
	    Calendar c1 = Calendar.getInstance();  
	      
	    //Pega a primeira data  
	    c1.set(Integer.parseInt(dataInicial.substring(0, 4)), Integer.parseInt(dataInicial.substring(4, 6)), Integer.parseInt(dataInicial.substring(6, 8)));  
	    data1.setTime(c1.getTimeInMillis());  
	      
	    //Pega a segunda data  
	    c1.set(Integer.parseInt(dataFinal.substring(0, 4)), Integer.parseInt(dataFinal.substring(4, 6)), Integer.parseInt(dataFinal.substring(6, 8)));  
	    data2.setTime(c1.getTimeInMillis());  
	  
	    return (data2.getTime() - data1.getTime()) /1000/60/60/24;  
	}  
	
}

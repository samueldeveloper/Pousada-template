package utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public  class FormataData {

	public static String formata(Calendar c){  
		
		SimpleDateFormat formatar = new SimpleDateFormat("dd/MM/yyyy");  
	    return formatar.format(c.getTime());  
	}
	
}

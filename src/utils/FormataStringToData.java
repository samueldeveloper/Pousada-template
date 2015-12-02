package utils;

public class FormataStringToData {

	public static String stringToData(String data){
		
		String parte1 = data.substring(8);
		String parte2 = data.substring(5,7);
		String parte3 = data.substring(0,4);
		String resultado = parte1 + "/" + parte2 + "/" + parte3;
		return resultado;
		
	}
	
}

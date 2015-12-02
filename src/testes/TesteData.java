package testes;

public class TesteData {

	public static void main(String[] args) {
		
		
		String data = "2015-03-12";
		String parte1 = data.substring(8);
		String parte2 = data.substring(5,7);
		String parte3 = data.substring(0,4);
		System.out.println(parte1 + "/" + parte2 + "/" + parte3);
		
	}
	
}

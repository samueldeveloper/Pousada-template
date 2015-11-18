package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	public static Connection getConnection()
	{
		Connection conexao = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conexao = DriverManager.getConnection("jdbc:mysql://localhost/db_implantacoes","postgres","root");
			System.out.println("Conectado com sucesso!!");
		}catch (SQLException e) {
			System.out.println("Nao pode conectar:" + e.getMessage());	
		}catch (ClassNotFoundException e) {
			System.out.println("Nao encontrou o driver:" + e.getMessage());	
		}
		return conexao;		
	}
}

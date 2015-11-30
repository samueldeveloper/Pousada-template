package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import model.Estado;
import jdbc.Conexao;

public class DaoEstado {

	private Connection conexao = Conexao.getConnection();
	
	public List<Estado> getListarEstados(){
		String sql =  " SELECT * FROM tb_estados ";					
		List<Estado> listarestados = new ArrayList<Estado>();
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			ResultSet resultado = prep.executeQuery();
			while (resultado.next()) {
				Estado est = new Estado();
				est.setId(resultado.getInt("id"));
				est.setUf(resultado.getString("uf"));
				est.setEstado(resultado.getString("nome"));				
				listarestados.add(est);
			}
			prep.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listarestados;		
	}
	
}

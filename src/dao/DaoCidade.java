package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Cidade;

import jdbc.Conexao;

public class DaoCidade {

	private Connection conexao = Conexao.getConnection();
	
	public List<Cidade> getCidadeporEstado(int fk_estado){
		String sql =  "select * from tb_cidades INNER JOIN tb_estados on tb_estados.id = tb_cidades.estado where tb_estados.id = ?";					
		List<Cidade> listarCidades = new ArrayList<Cidade>();
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setInt(1, fk_estado);
			ResultSet resultado = prep.executeQuery();
			while (resultado.next()) {
				Cidade cid = new Cidade();
				cid.setPk_cidade(resultado.getInt("id"));
				cid.setEstado(resultado.getInt("estado"));
				cid.setCidade(resultado.getString("nome"));
				cid.setUf(resultado.getString("uf"));
				listarCidades.add(cid);
			}
			prep.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listarCidades;		
	}
}

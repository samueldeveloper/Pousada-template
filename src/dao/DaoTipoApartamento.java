package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.TipoApartamento;
import jdbc.Conexao;

public class DaoTipoApartamento {

	private Connection conexao = Conexao.getConnection();
	
	public List<TipoApartamento> getTipoApartamento(){
		String sql = "select * from tb_tipoapartamento";
		List<TipoApartamento> listaTipoApartamento = new ArrayList<TipoApartamento>();
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			ResultSet resultado = prep.executeQuery();
			while (resultado.next()) {
				TipoApartamento tipoapt = new TipoApartamento();
				tipoapt.setPkTipoApt(resultado.getInt("pk_tipo_apt"));
				tipoapt.setTipoApt(resultado.getString("desc_tipo_apt"));
				tipoapt.setValorDiaria(resultado.getDouble("valor_apt"));
				listaTipoApartamento.add(tipoapt);
			}
			prep.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaTipoApartamento;
	}
	
}

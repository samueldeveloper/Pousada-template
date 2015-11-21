package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Apartamento;
import jdbc.Conexao;



public class DaoApartamento {

	private Connection conexao = Conexao.getConnection();
	
	public void inserirApartamento(Apartamento apartamento){
		String sql = "insert into tb_apartamento (num_apt,tipo_apt,status_apt) values(?,?,?);";
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setInt(1, apartamento.getNumApt());
			prep.setInt(2, apartamento.getFkTipoApt());
			prep.setString(3, apartamento.getStatus());
			prep.execute();
			prep.close();
			System.out.println("OK");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Apartamento> getListarApartamentos(){
		String sql =  " SELECT tb_apartamento.*, tb_tipoapartamento.desc_tipo_apt, tb_tipoapartamento.valor_apt "
					+ " FROM tb_apartamento "
					+ " inner join tb_tipoapartamento on tb_tipoapartamento.pk_tipo_apt = tb_apartamento.tipo_apt";
		
		List<Apartamento> listaApartamento = new ArrayList<Apartamento>();
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			ResultSet resultado = prep.executeQuery();
			while (resultado.next()) {
				Apartamento apt = new Apartamento();
				apt.setNumApt(resultado.getInt("num_apt"));
				apt.setFkTipoApt(resultado.getInt("tipo_apt"));
				apt.setStatus(resultado.getString("status_apt"));
				apt.setTipoApt(resultado.getString("desc_tipo_apt"));				
				apt.setValor_diaria(resultado.getDouble("valor_apt"));
				listaApartamento.add(apt);
			}
			prep.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaApartamento;		
	}
	
	public Apartamento listarPorId(Integer id){
		
		
		String sql = "select * from tb_apartamento where num_apt = ?";
		Apartamento apt = null;
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setInt(1, id);
			ResultSet resultado = prep.executeQuery();
			if(resultado.next()){
				apt = new Apartamento();
				apt.setNumApt(resultado.getInt("num_apt"));
				apt.setFkTipoApt(resultado.getInt("tipo_apt"));
				apt.setStatus(resultado.getString("status_apt"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return apt; 
	}
	
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import java.util.ArrayList;
import java.util.List;

import model.Apartamento;
import model.Reserva;
import jdbc.Conexao;

public class DaoReserva {

	public DaoReserva() {
	
	}
	
	public DaoReserva(Reserva reserva) {
		this.inserirReserva(reserva);
	}
	
	private Connection conexao = Conexao.getConnection();
	
	public void inserirReserva(Reserva reserva){
		String sql = "insert into tb_reserva "
				+ "(num_apt,cod_cliente,data_entrada,data_saida,status_reserva) values(?,?,?,?,?);";
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setInt(1, reserva.getNum_apt());
			prep.setInt(2, reserva.getCod_cliente());
			prep.setString(3, reserva.getData_entrada());
			prep.setString(4, reserva.getData_saida());
			prep.setString(5, reserva.getStatus_reserva());
			prep.execute();
			prep.close();
			System.out.println("reserva ok");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public List<Reserva> getListarReservas(){
		String sql =  " SELECT tb_reserva.*, tb_hospede.nome_cliente"
					+ " FROM tb_reserva "
					+ " inner join tb_hospede on tb_hospede.cod_cliente = tb_reserva.cod_cliente";
		
		List<Reserva> listaReservas = new ArrayList<Reserva>();
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			ResultSet resultado = prep.executeQuery();
			while (resultado.next()) {
				Reserva reserva = new Reserva();
				reserva.setNum_reserva(resultado.getInt("num_reserva"));
				reserva.setNum_apt(resultado.getInt("num_apt"));
				reserva.setCliente(resultado.getString("nome_cliente"));
				reserva.setData_entrada(resultado.getString("data_entrada"));
				reserva.setData_saida(resultado.getString("data_saida"));
				reserva.setStatus_reserva(resultado.getString("status_reserva"));
				listaReservas.add(reserva);
			}
			prep.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaReservas;		
	}
	
	
	public Reserva getReserva(String status, int num_apt){
		String sql =  "select tb_reserva.*, tb_tipoapartamento.valor_apt from tb_reserva "
				+ "inner join tb_apartamento on tb_apartamento.num_apt = tb_reserva.num_apt "
				+ "inner join tb_tipoapartamento on tb_tipoapartamento.pk_tipo_apt = tb_apartamento.tipo_apt"
				+ " WHERE tb_reserva.status_reserva = ? and tb_reserva.num_apt = ?";
		
		Reserva reserva = null;
		try {
			
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setString(1, status);
			prep.setInt(2, num_apt);
			ResultSet resultado = prep.executeQuery();
			if(resultado.next()) {
				
				reserva = new Reserva();
				reserva.setNum_reserva(resultado.getInt("num_reserva"));
				reserva.setNum_apt(resultado.getInt("num_apt"));
				
				reserva.setData_entrada(resultado.getString("data_entrada"));
				reserva.setData_saida(resultado.getString("data_saida"));
				reserva.setStatus_reserva(resultado.getString("status_reserva"));
				reserva.setValorDiaria(resultado.getDouble("valor_apt"));
			}
			prep.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return reserva;		
	}
	
	public void alterarReserva(Reserva reserva){
		String sql = "update tb_reserva SET status_reserva = ?, data_saida = ? WHERE num_apt = ?";
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setString(1, reserva.getStatus_reserva());
			prep.setString(2, reserva.getData_saida());
			prep.setInt(3, reserva.getNum_apt());
			prep.execute();
			prep.close();			
			System.out.println("Reserva Alterado com sucesso!");
		}  catch (SQLException e) {			
			e.printStackTrace();
		}
	}
	
}

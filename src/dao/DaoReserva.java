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
	
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Apartamento;
import model.Hospede;
import jdbc.Conexao;


public class DaoHospede {
	
	public DaoHospede(Hospede hospede) {
		this.inserirHospede(hospede);
	}

private Connection conexao = Conexao.getConnection();
	
	public void inserirHospede(Hospede hospede){
		String sql = "insert into tb_hospede ("
				+ "cpf,nome_cliente,tel_celular,tel_fixo,rua,num_casa,complemento_casa,fk_cidade,fk_estado,email_cli,cep) "
				+ "values(?,?,?,?,?,?,?,?,?,?,?);";
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setString(1, hospede.getCpf());
			prep.setString(2, hospede.getNome_cliente());
			prep.setString(3, hospede.getTel_celular());
			prep.setString(4, hospede.getTel_fixo());
			prep.setString(5, hospede.getRua());
			prep.setInt(6, hospede.getNum_casa());
			prep.setString(7, hospede.getComplemento_casa());
			prep.setInt(8, hospede.getFk_cidade());
			prep.setInt(9, hospede.getFk_estado());
			prep.setString(10, hospede.getEmail());
			prep.setString(11, hospede.getCep());
			prep.execute();
			prep.close();
			System.out.println("hospede OK");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int listarPorId(String cpf){
		
		
		String sql = "select cod_cliente from tb_hospede where cpf = ?";
		int cod_cliente = 0;
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setString(1, cpf);
			ResultSet resultado = prep.executeQuery();
			if(resultado.next()){
				cod_cliente = resultado.getInt("cod_cliente");				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cod_cliente; 
	}
	
	
}

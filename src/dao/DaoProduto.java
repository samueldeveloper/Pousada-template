package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.Conexao;

import model.Produto;

public class DaoProduto {
	public DaoProduto() {
	
	}
	public DaoProduto(Produto produto) {
		this.inserirProduto(produto);
	}
	
	private Connection conexao = Conexao.getConnection();
	
	public void inserirProduto(Produto produto){
	      String sql = "insert into tb_produto (cod_produto,nome_produto,valor_produto) values(?,?,?);";
	      try {
	        PreparedStatement prep = conexao.prepareStatement(sql);
	        prep.setInt(1, produto.getId_produto());
	        prep.setString(2, produto.getNome_produto());
	        prep.setDouble(3, produto.getValor());
	        prep.execute();
	        prep.close();
	        System.out.println("produto inserido");
	      } catch (SQLException e) {
	        e.printStackTrace();
	      }
	    }

	public List<Produto> getListarProdutos(){
		String sql =  " SELECT tb_produto.*"
					+ " FROM tb_produto " ;
		List<Produto> listaProduto = new ArrayList<Produto>();
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			ResultSet resultado = prep.executeQuery();
			while (resultado.next()) {
				Produto produto = new Produto();
				produto.setId_produto(resultado.getInt("cod_produto"));
				produto.setNome_produto(resultado.getString("nome_produto"));
				produto.setValor(resultado.getDouble("valor_produto"));
				listaProduto.add(produto);
			}
			prep.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaProduto;		
	}
	
	public Produto listarPorId(Integer id){
		
		
		String sql = "select * from tb_produto where cod_produto = ?";
		Produto prod = null;
		try {
			PreparedStatement prep = conexao.prepareStatement(sql);
			prep.setInt(1, id);
			ResultSet resultado = prep.executeQuery();
			if(resultado.next()){
				prod = new Produto();
				prod.setId_produto(resultado.getInt("cod_produto"));
				prod.setNome_produto(resultado.getString("nome_produto"));
				prod.setValor(resultado.getDouble("valor_produto"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return prod; 
	}
	
}

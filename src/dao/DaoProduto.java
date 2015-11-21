package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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

	
	
}

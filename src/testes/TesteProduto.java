package testes;

import model.Produto;
import dao.DaoProduto;

public class TesteProduto {

	public static void main(String[] args) {
		
		DaoProduto daoproduto = new DaoProduto();
		Produto produto = new Produto();
		produto.setId_produto(1);
		produto.setNome_produto("Cerveja");
		produto.setValor(5.00);
		daoproduto.inserirProduto(produto);
		
		

	}

}

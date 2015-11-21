package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoProduto;
import model.Produto;

@WebServlet("/CadastrarProduto")
public class CadastrarProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CadastrarProduto() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String nome_produto  = request.getParameter("produto");
		String valor_produto = request.getParameter("valor_unitario");
		System.out.println(nome_produto + "-" + valor_produto);
		
		Produto produto = new Produto();
			produto.setNome_produto(nome_produto);
			produto.setValor(Double.parseDouble(valor_produto));
		DaoProduto daoProduto = new DaoProduto(produto);
		out.println("<div class='resultado' style='background:#1F77D0;color:#fff'><center>Produto com sucesso</center></div>'");
		
	}

}

package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;
import dao.DaoProduto;

@WebServlet("/ListarProdutos")
public class ListarProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public ListarProdutos() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");		
		DaoProduto daoprod = new DaoProduto();
		Produto produto = daoprod.listarPorId(Integer.parseInt(id));
		out.println(produto.getValor());
		
	}

}

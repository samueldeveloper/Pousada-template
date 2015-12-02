package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoApartamento;
import model.Apartamento;

/**
 * Servlet implementation class DeletarApartamento
 */
@WebServlet("/DeletarApartamento")
public class DeletarApartamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DeletarApartamento() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");	
		
		System.out.println(id);
		
		DaoApartamento daoapt = new DaoApartamento();
		Apartamento apt = daoapt.listarPorId(Integer.parseInt(id));
		
		System.out.println(apt.getNumApt());
		if(apt.getStatus() == "O"){
			out.println("<div class='resultado' style='background:red;color:#fff'><center>Não é possivel deleta pois este Apartamento esta ocupado</center></div>'");
		}else{
			daoapt.deletarApartamento(Integer.parseInt(id));
			out.println("<div class='resultado' style='background:#1F77D0;color:#fff'><center>Deletado com sucesso</center></div>'");
			response.sendRedirect("adm/listarApartamentos.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

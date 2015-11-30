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

@WebServlet("/CadastrarApartamento")
public class CadastrarApartamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CadastrarApartamento() {
        super();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	PrintWriter out = response.getWriter();
    	//out.println("oi");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String numeroapt = request.getParameter("numeroapt");
		String tipoapt	 = request.getParameter("tipoapt");
		
		Apartamento apartamento = new Apartamento();
		apartamento.setNumApt(Integer.parseInt(numeroapt));
		apartamento.setFkTipoApt(Integer.parseInt(tipoapt));
		//status D = desocupado | O = ocupado
		apartamento.setStatus("D");
		
		DaoApartamento daoApartamento = new DaoApartamento();
		Apartamento aptretorno = daoApartamento.listarPorId(Integer.parseInt(numeroapt));
		if(aptretorno != null){
			out.println("<div class='resultado' style='background:red;color:#fff'><center>Numero de Apartamento ja existe</center></div>'");
		}else{
				daoApartamento.inserirApartamento(apartamento);
				out.println("<div class='resultado' style='background:#1F77D0;color:#fff'><center>Cadastro realizado com sucesso</center></div>'");
		}
		
	}

}

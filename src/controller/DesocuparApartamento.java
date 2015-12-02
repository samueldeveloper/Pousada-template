package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.Normalizer.Form;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.FormataStringToData;
import model.Apartamento;
import model.Reserva;
import dao.DaoApartamento;
import dao.DaoReserva;

@WebServlet("/DesocuparApartamento")
public class DesocuparApartamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DesocuparApartamento() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		DaoReserva daoreserva = new DaoReserva();
		Reserva reserva = new Reserva();
		
		String acao = request.getParameter("acao");
		System.out.println(acao);
		String num_apt = request.getParameter("num_apt");
		String data_saida = request.getParameter("data_saida");
		if(acao == null){
			acao = "desocuparApartamento";
		}
		
		if(acao.equals("pegardados")){			
			reserva = daoreserva.getReserva("O", Integer.parseInt(num_apt));
			String data_entrada = reserva.getData_entrada();
			String data_saida1 = reserva.getData_saida();
			out.println(FormataStringToData.stringToData(data_entrada) + "|" + FormataStringToData.stringToData(data_saida1));
		}else{	
			Apartamento apt = new Apartamento();
			apt.setNumApt(Integer.parseInt(num_apt));
			apt.setStatus("D");
			DaoApartamento daoapt = new DaoApartamento();
			daoapt.alterarStatusApartamento(apt);
			
			
			reserva.setNum_apt(Integer.parseInt(num_apt));
			reserva.setData_saida(data_saida);
			reserva.setStatus_reserva("D");
			
			daoreserva.alterarReserva(reserva);
			
			out.println("<div class='resultado' style='background:#1F77D0;color:#fff'><center>OK</center></div>'");
		}
		
	}

}

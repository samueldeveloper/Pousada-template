package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoApartamento;
import dao.DaoHospede;
import dao.DaoReserva;
import model.Apartamento;
import model.Hospede;
import model.Reserva;

@WebServlet("/OcuparApartamento")
public class OcuparApartamento extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OcuparApartamento() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String nome = request.getParameter("nome");
		String cpf = request.getParameter("cpf");
		String email = request.getParameter("email");
		String celular = request.getParameter("celular");
		String fixo = request.getParameter("fixo");
		String cep = request.getParameter("cep");
		String rua = request.getParameter("rua");
		String numero = request.getParameter("numero");
		String complemento = request.getParameter("complemento");
		String estado = request.getParameter("estado");
		String cidade = request.getParameter("cidade");
		String apt = request.getParameter("apt");
		String data_entrada = request.getParameter("data_entrada");
		String data_saida = request.getParameter("data_saida");
		
		if (complemento == null){
			complemento = " ";
		}
		
		Hospede hospede = new Hospede();
		
		hospede.setNome_cliente(nome);
		hospede.setCpf(cpf);
		hospede.setEmail(email);
		hospede.setTel_celular(celular);
		hospede.setTel_fixo(fixo);
		hospede.setCep(cep);
		hospede.setRua(rua);
		hospede.setNum_casa(Integer.parseInt(numero));
		hospede.setComplemento_casa(complemento);
		hospede.setFk_estado(Integer.parseInt(estado));
		hospede.setFk_cidade(Integer.parseInt(cidade));
		
		DaoHospede daohospede = new DaoHospede(hospede);
		int codigoCliente = daohospede.listarPorId(cpf);
		System.out.println(codigoCliente);
		
		
		Apartamento objapt = new Apartamento();
		objapt.setNumApt(Integer.parseInt(apt));
		objapt.setStatus("O");
		DaoApartamento daoapt = new DaoApartamento();
		daoapt.alterarStatusApartamento(objapt);
		
		Reserva reserva = new Reserva();
		reserva.setNum_apt(Integer.parseInt(apt));
		reserva.setCod_cliente(codigoCliente);
		reserva.setData_entrada(data_entrada);
		reserva.setData_saida(data_saida);
		reserva.setStatus_reserva("O");
		DaoReserva daoreserva = new DaoReserva(reserva);
		
		out.println("<div class='resultado' style='background:#1F77D0;color:#fff'><center>Cadastro realizado com sucesso</center></div>'");
	}

}

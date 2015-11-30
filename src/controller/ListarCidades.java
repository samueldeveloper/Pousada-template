package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cidade;
import dao.DaoCidade;

@WebServlet("/ListarCidades")
public class ListarCidades extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ListarCidades() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String fk_estado = request.getParameter("estado");
		System.out.println(fk_estado);
		DaoCidade daocid = new DaoCidade();
		List<Cidade> listaCidades = daocid.getCidadeporEstado(Integer.parseInt(fk_estado));
		for(Cidade cid : listaCidades){
			out.println("<option value=" + cid.getPk_cidade() + " > " + cid.getCidade() + "</option>");		
		}
	}

}

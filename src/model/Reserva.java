package model;

public class Reserva {

	private int num_reserva;
	private int num_apt;
	private int cod_cliente;
	private String data_entrada;
	private String data_saida;
	private String cliente;
	private String status_reserva;
	
	
	public String getCliente() {
		return cliente;
	}
	public void setCliente(String cliente) {
		this.cliente = cliente;
	}
	public String getStatus_reserva() {
		return status_reserva;
	}
	public void setStatus_reserva(String status_reserva) {
		this.status_reserva = status_reserva;
	}
	public int getNum_reserva() {
		return num_reserva;
	}
	public void setNum_reserva(int num_reserva) {
		this.num_reserva = num_reserva;
	}
	public int getNum_apt() {
		return num_apt;
	}
	public void setNum_apt(int num_apt) {
		this.num_apt = num_apt;
	}
	public int getCod_cliente() {
		return cod_cliente;
	}
	public void setCod_cliente(int cod_cliente) {
		this.cod_cliente = cod_cliente;
	}
	public String getData_entrada() {
		return data_entrada;
	}
	public void setData_entrada(String data_entrada) {
		this.data_entrada = data_entrada;
	}
	public String getData_saida() {
		return data_saida;
	}
	public void setData_saida(String data_saida) {
		this.data_saida = data_saida;
	}
	
	
	
}

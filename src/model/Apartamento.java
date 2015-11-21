package model;

public class Apartamento {

	private int    numApt;
	private int    fkTipoApt;
	private String tipoApt;
	private String status;
	private double valor_diaria;
	
	
	public int getNumApt() {
		return numApt;
	}
	public void setNumApt(int numApt) {
		this.numApt = numApt;
	}
	public int getFkTipoApt() {
		return fkTipoApt;
	}
	public void setFkTipoApt(int fkTipoApt) {
		this.fkTipoApt = fkTipoApt;
	}
	public String getTipoApt() {
		return tipoApt;
	}
	public void setTipoApt(String tipoApt) {
		this.tipoApt = tipoApt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getValor_diaria() {
		return valor_diaria;
	}
	public void setValor_diaria(double valor_diaria) {
		this.valor_diaria = valor_diaria;
	}
	
	
}

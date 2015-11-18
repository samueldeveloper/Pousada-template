package model;

public class Apartamento {

	private int    numApt;
	private int    fkTipoApt;
	private String tipoApt;
	private String status;
	
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
	
	
	
}

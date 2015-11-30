package model;

public class Cidade {
	
	private int pk_cidade;
	private int estado;
	private String uf;
	private String cidade;
	
	public int getPk_cidade() {
		return pk_cidade;
	}
	public void setPk_cidade(int pk_cidade) {
		this.pk_cidade = pk_cidade;
	}
	public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
}

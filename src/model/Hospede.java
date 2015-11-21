package model;

public class Hospede {
	
	public class hospede {

		int cod_cliente;
		int cpf;
		String nome_cliente;
		String tel_celular;
		String tel_fixo;
		String rua;
		int num_casa;
		String complemento_casa;
		String bairro;
		String email;
		int fk_estado;
		int fk_cidade;		
		
		public int getFk_estado() {
			return fk_estado;
		}
		public void setFk_estado(int fk_estado) {
			this.fk_estado = fk_estado;
		}
		public int getFk_cidade() {
			return fk_cidade;
		}
		public void setFk_cidade(int fk_cidade) {
			this.fk_cidade = fk_cidade;
		}
		
		public int getCod_cliente() {
			return cod_cliente;
		}
		public void setCod_cliente(int cod_cliente) {
			this.cod_cliente = cod_cliente;
		}
		public int getCpf() {
			return cpf;
		}
		public void setCpf(int cpf) {
			this.cpf = cpf;
		}
		public String getNome_cliente() {
			return nome_cliente;
		}
		public void setNome_cliente(String nome_cliente) {
			this.nome_cliente = nome_cliente;
		}
		public String getTel_celular() {
			return tel_celular;
		}
		public void setTel_celular(String tel_celular) {
			this.tel_celular = tel_celular;
		}
		public String getTel_fixo() {
			return tel_fixo;
		}
		public void setTel_fixo(String tel_fixo) {
			this.tel_fixo = tel_fixo;
		}
		public String getRua() {
			return rua;
		}
		public void setRua(String rua) {
			this.rua = rua;
		}
		public int getNum_casa() {
			return num_casa;
		}
		public void setNum_casa(int num_casa) {
			this.num_casa = num_casa;
		}
		public String getComplemento_casa() {
			return complemento_casa;
		}
		public void setComplemento_casa(String complemento_casa) {
			this.complemento_casa = complemento_casa;
		}
		public String getBairro() {
			return bairro;
		}
		public void setBairro(String bairro) {
			this.bairro = bairro;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
	}

	
	
	
	
}

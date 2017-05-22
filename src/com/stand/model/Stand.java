package com.stand.model;


public class Stand {
	
	private int		ID;
	private String	nome,
					contacto,
					morada,
					localidade,
					codigoPostal,
					hora_abertura,
					hora_fecho;
	private boolean isDeleted,
					isOnline;
	private int 	responsavel;
	
	
	public Stand(int iD, String nome, String contacto, String morada, String localidade, String codigoPostal,
			String hora_abertura, String hora_fecho, boolean isDeleted, boolean isOnline, int responsavel) {
		super();
		ID = iD;
		this.nome = nome;
		this.contacto = contacto;
		this.morada = morada;
		this.localidade = localidade;
		this.codigoPostal = codigoPostal;
		this.hora_abertura = hora_abertura;
		this.hora_fecho = hora_fecho;
		this.isDeleted = isDeleted;
		this.isOnline = isOnline;
		this.responsavel = responsavel;
	}
	
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getContacto() {
		return contacto;
	}
	public void setContacto(String contacto) {
		this.contacto = contacto;
	}
	public String getMorada() {
		return morada;
	}
	public void setMorada(String morada) {
		this.morada = morada;
	}
	public String getLocalidade() {
		return localidade;
	}
	public void setLocalidade(String localidade) {
		this.localidade = localidade;
	}
	public String getCodigoPostal() {
		return codigoPostal;
	}
	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}
	public String getHora_abertura() {
		return hora_abertura;
	}
	public void setHora_abertura(String hora_abertura) {
		this.hora_abertura = hora_abertura;
	}
	public String getHora_fecho() {
		return hora_fecho;
	}
	public void setHora_fecho(String hora_fecho) {
		this.hora_fecho = hora_fecho;
	}
	public boolean isDeleted() {
		return isDeleted;
	}
	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public boolean isOnline() {
		return isOnline;
	}
	public void setOnline(boolean isOnline) {
		this.isOnline = isOnline;
	}

	public int getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(int responsavel) {
		this.responsavel = responsavel;
	}
}

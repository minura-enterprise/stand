package com.stand.model;

public class Web {
	
	private int 	ID;
	private String	nome,
					morada,
					localidade,
					codigoPostal,
					contacto;
	private Utilizador responsavel;
	
	public Web(int iD, String nome, String morada, String localidade, String codigoPostal, String contacto,
			Utilizador responsavel) {
		super();
		ID = iD;
		this.nome = nome;
		this.morada = morada;
		this.localidade = localidade;
		this.codigoPostal = codigoPostal;
		this.contacto = contacto;
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
	public String getContacto() {
		return contacto;
	}
	public void setContacto(String contacto) {
		this.contacto = contacto;
	}
	public Utilizador getResponsavel() {
		return responsavel;
	}
	public void setResponsavel(Utilizador responsavel) {
		this.responsavel = responsavel;
	}				
}

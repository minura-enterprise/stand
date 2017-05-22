package com.stand.model;

public class Pessoa {
	
	private int		ID;
	private String	nome,
					sobrenome,
					email,
					contacto;
	private int		categoria;
	public Pessoa(int iD, String nome, String sobrenome, String email, String contacto, int categoria) {
		super();
		ID = iD;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.email = email;
		this.contacto = contacto;
		this.categoria = categoria;
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
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContacto() {
		return contacto;
	}
	public void setContacto(String contacto) {
		this.contacto = contacto;
	}
	public int getCategoria() {
		return categoria;
	}
	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}
}

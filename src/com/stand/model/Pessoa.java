package com.stand.model;


public class Pessoa {
	
	int id;
	String nome, email, contacto, contactoAlt;
	
	public Pessoa(int id, String nome, String email, String contacto, String contactoAlt) {
		super();
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.contacto = contacto;
		this.contactoAlt = contactoAlt;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
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
	public String getContactoAlt() {
		return contactoAlt;
	}
	public void setContactoAlt(String contactoAlt) {
		this.contactoAlt = contactoAlt;
	}

}

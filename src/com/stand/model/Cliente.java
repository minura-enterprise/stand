package com.stand.model;

public class Cliente extends Pessoa {

	public Cliente(int id, String nome, String email, String contacto, String contactoAlt) {
		super(id, contactoAlt, contactoAlt, contactoAlt, contactoAlt);
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.contacto = contacto;
		this.contactoAlt = contactoAlt;
	}
	

}
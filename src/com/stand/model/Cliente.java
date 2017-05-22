package com.stand.model;


public class Cliente extends Pessoa {
	int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Cliente(int iD, String nome, String sobrenome, String email, String contacto, int categoria, int id2) {
		super(iD, nome, sobrenome, email, contacto, categoria);
		id = id2;
	}

}
package com.stand.model;

public class Utilizador extends Pessoa {

	private String	username,
					password;
	private boolean	isDeleted,
					isOnline;
	
	public Utilizador(int iD, String nome, String sobrenome, String email, String contacto, int categoria,
			String username, String password, boolean isDeleted, boolean isOnline) {
		super(iD, nome, sobrenome, email, contacto, categoria);
		this.username = username;
		this.password = password;
		this.isDeleted = isDeleted;
		this.isOnline = isOnline;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
}

package com.stand.model;

public class Utilizador extends Pessoa{
	
	private String	username,
					password;
	private boolean isOnline,
					isDeleted;
	private int		tipo;
	
	public Utilizador(int iD, String nome, String sobrenome, String nacionalidade, String morada, String localidade,
			String codigoPostal, String contacto, String email, String username, String password, boolean isOnline,
			boolean isDeleted, int tipo) {
		super(iD, nome, sobrenome, nacionalidade, morada, localidade, codigoPostal, contacto, email);
		this.username = username;
		this.password = password;
		this.isOnline = isOnline;
		this.isDeleted = isDeleted;
		this.tipo = tipo;
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
	public boolean isOnline() {
		return isOnline;
	}
	public void setOnline(boolean isOnline) {
		this.isOnline = isOnline;
	}
	public boolean isDeleted() {
		return isDeleted;
	}
	public void setDeleted(boolean isDeleted) {
		this.isDeleted = isDeleted;
	}
	public int getTipo() {
		return tipo;
	}
	public void setTipo(int tipo) {
		this.tipo = tipo;
	}			
}

package com.stand.model;


public class Vendedor extends Pessoa{
	
	String password;
	boolean isOnline;
	
	public Vendedor(int id, String nome, String email, String contacto, String contactoAlt, String password,
			boolean isOnline) {
		super(id, nome, email, contacto, contactoAlt, id);
		this.password = password;
		this.isOnline = isOnline;
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
	
}
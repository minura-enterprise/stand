package com.stand.model;

public class ResponsavelVenda extends Pessoa{
	
	String password;
	boolean idDeleted, isOnline;
	
	public ResponsavelVenda(int id, String nome, String email, String contacto, String contactoAlt, String password,
			boolean idDeleted, boolean isOnline) {
		super(id, nome, email, contacto, contactoAlt);
		this.password = password;
		this.idDeleted = idDeleted;
		this.isOnline = isOnline;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isIdDeleted() {
		return idDeleted;
	}
	public void setIdDeleted(boolean idDeleted) {
		this.idDeleted = idDeleted;
	}
	public boolean isOnline() {
		return isOnline;
	}
	public void setOnline(boolean isOnline) {
		this.isOnline = isOnline;
	}
}
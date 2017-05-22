package com.stand.model;

public class ResponsavelStand extends Pessoa{

	String password;
	boolean isDeleted, isOnline;
	
	public ResponsavelStand(int id, String nome, String email, String contacto, String contactoAlt, String password,
			boolean isDeleted, boolean isOnline) {
		super(id, nome, email, contacto, contactoAlt, id);
		this.password = password;
		this.isDeleted = isDeleted;
		this.isOnline = isOnline;
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
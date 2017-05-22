package com.stand.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.stand.model.Utilizador;
import com.stand.util.InitConnManager;

public class SUtilizador {
	
	private ArrayList<Utilizador> arUtilizador;
	private static Connection currentCon = null;
	private static ResultSet rs = null;
	
	public SUtilizador(){
		super();
		this.arUtilizador = new ArrayList<Utilizador>();
	}
	
	public static ArrayList<Utilizador> getDBUtilizador(){
		Statement stmt = null;
		Utilizador u = null;
		ArrayList<Utilizador> ar = new ArrayList<Utilizador>();
		int c = 0;
		
		try{
			currentCon = InitConnManager.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery("SELECT * from utilizadores");
			
			while(rs.next()){
				c++;
				int id = rs.getInt("id");
				String nome = rs.getString("nome");
				String sobrenome = rs.getString("sobrenome");
				String email = rs.getString("email");
				String contacto = rs.getString("contacto");
				int categoria = rs.getInt("categoria");
				String username = rs.getString("username");
				String password = rs.getString("password");
				boolean isDeleted = rs.getBoolean("isDelete");
				boolean isOnline = rs.getBoolean("isOnline");
				
				u = new Utilizador(id, nome, sobrenome, email, contacto, categoria, username, password, isDeleted, isOnline);
				ar.add(u);
			}
			
			if(ar.get(ar.size()-1).getID() != c){
				System.out.println("Erro ao carregar os utilizadores!");
				System.out.println("Erro: Ultimo ID("+ar.get(ar.size()-1).getID()+") obtido nao corresponde com C("+c+")");
			}
			
		} catch (Exception ex) {
			System.out.println("Erro ao carregar os utilizadores!");
			System.out.println("Erro: "+ ex);
		} finally {
			if (rs != null){
				try {
					rs.close();
				} catch (Exception e) {
					rs = null;
				}
			}
			
			if(stmt != null){
				try {
					stmt.close();
				} catch (Exception e) {
					stmt = null;
				}
			}
			
			if(currentCon != null){
				try {
					currentCon.close();
				} catch (Exception e) {}
				
				currentCon = null;
			}
		}

		return ar;
	}

	public ArrayList<Utilizador> getArUtilizador() {
		return arUtilizador;
	}

	public void setArUtilizador(ArrayList<Utilizador> arUtilizador) {
		this.arUtilizador = arUtilizador;
	}
	
	
}

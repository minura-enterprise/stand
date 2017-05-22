package com.stand.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.stand.model.Tipo;
import com.stand.util.InitConnManager;

public class STipo {

	private ArrayList<Tipo> arTipo;
	private static Connection currentCon = null;
	private static ResultSet rs = null;
	
	public STipo(){
		super();
		this.arTipo = new ArrayList<Tipo>();
	}
	
	public static ArrayList<Tipo> getDBTipo(){
		Statement stmt = null;
		Tipo t = null;
		ArrayList<Tipo> ar = new ArrayList<Tipo>();
		int c = 0;
		
		try{
			currentCon = InitConnManager.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery("SELECT * from tipos ORDER BY id");
			
			// se next() nao encontrar nada, ele retorna falso.
			boolean isEmpty = rs.next();
			
			if(isEmpty != true){
				//Manda introduzir os valores padrao na base de dados
			}
			rs.previous();
			while(rs.next()){
				c++;
				int id = rs.getInt("ID");
				String nome = rs.getString("nome");
				t = new Tipo(id, nome);
				ar.add(t);
			}
			
			if(ar.get(ar.size()-1).getID() != c){
				System.out.println("Erro ao carregar os tipos de utilizador!");
				System.out.println("Erro: Ultimo ID("+ar.get(ar.size()-1).getID()+") obtido nao corresponde com C("+c+")");
			}
			
		} catch (Exception ex) {
			System.out.println("Erro ao carregar os tipos de utilizador!");
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

	public ArrayList<Tipo> getArTipo() {
		return arTipo;
	}

	public void setArTipo(ArrayList<Tipo> arTipo) {
		this.arTipo = arTipo;
	}
}

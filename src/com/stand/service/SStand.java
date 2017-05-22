package com.stand.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.stand.model.Stand;
import com.stand.util.InitConnManager;

public class SStand {

	private ArrayList<Stand> arStand;
	private static Connection currentCon = null;
	private static ResultSet rs = null;
	
	public SStand(){
		super();
		this.arStand = new ArrayList<Stand>();
	}
	
	public static ArrayList<Stand> getDBStand(){
		Statement stmt = null;
		Stand s = null;
		ArrayList<Stand> ar = new ArrayList<Stand>();
		int c = 0;
		
		try{
			currentCon = InitConnManager.getConnection();
			stmt = currentCon.createStatement();
			rs = stmt.executeQuery("SELECT * from stands");
			
			while(rs.next()){
				c++;
				int id = rs.getInt("id");
				String nome = rs.getString("nome");
				String contacto = rs.getString("contacto");
				String morada = rs.getString("morada");
				String localidade = rs.getString("localidade");
				String codigoPostal = rs.getString("codigoPostal");
				String hora_abertura = rs.getString("hora_abertura");
				String hora_fecho = rs.getString("hora_fecho");
				boolean isDeleted = rs.getBoolean("isDeleted");
				boolean isOnline = rs.getBoolean("isOnline");
				int id_responsavel = rs.getInt("id_responsavel");
				
				s = new Stand(id, nome, contacto, morada, localidade, codigoPostal, hora_abertura, hora_fecho, isDeleted, isOnline, id_responsavel);
				ar.add(s);
			}
			
			if(ar.get(ar.size()-1).getID() != c){
				System.out.println("Erro ao carregar os stands!");
				System.out.println("Erro: Ultimo ID("+ar.get(ar.size()-1).getID()+") obtido nao corresponde com C("+c+")");
			}
			
		} catch (Exception ex) {
			System.out.println("Erro ao carregar os stans!");
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

	public ArrayList<Stand> getArStand() {
		return arStand;
	}

	public void setArStand(ArrayList<Stand> arStand) {
		this.arStand = arStand;
	}
}

package com.stand.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
	
	public static void insertDBTipo(Tipo t){
		PreparedStatement pstmt = null;
		
		try {
			
			currentCon = InitConnManager.getConnection();
			String sql = "INSERT INTO tipos (nome) VALUES ('"+ t.getNome() +"');";
			pstmt = currentCon.prepareStatement(sql);
			pstmt.executeUpdate();
			System.out.println("Tipo inserido: " + t.getNome());
			
		} catch (Exception e) {
			System.out.println("Erro ao inserir: "+e);
		} finally{
			if(rs != null){
				try {
					rs.close();
				} catch (Exception e) {
					rs = null;
				}
			}
			
			if(pstmt != null){
				try {
					pstmt.close();
				} catch (Exception e) {
					pstmt = null;
				}
			}
			
			if(currentCon != null){
				try {
					currentCon.close();
				} catch (Exception e) {}
			}
			currentCon = null;
		}
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
				Tipo t1 = new Tipo(1, "user");
				insertDBTipo(t1);
				Tipo t2 = new Tipo(2, "cliente");
				insertDBTipo(t2);
				Tipo t3 = new Tipo(3, "vendedor");
				insertDBTipo(t3);
				Tipo t4 = new Tipo(4, "respVenda");
				insertDBTipo(t4);
				Tipo t5 = new Tipo(5, "respStand");
				insertDBTipo(t5);
				Tipo t6 = new Tipo(6, "admin");
				insertDBTipo(t6);
				ar.add(t1);
				ar.add(t2);
				ar.add(t3);
				ar.add(t4);
				ar.add(t5);
				ar.add(t6);
				c = 6;
			}else{

				while(rs.next()){
					c++;
					int id = rs.getInt("ID");
					String nome = rs.getString("nome");
					t = new Tipo(id, nome);
					ar.add(t);
				}
			}
			
			if(ar.get(ar.size()-1).getID() != c+1){
				System.out.println("Erro ao carregar os tipos de utilizador!");
				System.out.println("Erro: Ultimo ID("+ar.get(ar.size()-1).getID()+") obtido nao corresponde com C("+c+")");
			}
			
		} catch (Exception ex) {
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

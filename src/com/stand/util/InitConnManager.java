package com.stand.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InitConnManager {
	
	private static String minura_porta		= "3306";
	private static String minura_server		= "localhost";
	private static String minura_username 	= "root";
	private static String minura_password 	= "";
	private static String minura_database 	= "minura_stand";
	
	private static String minura_driver 	= "com.mysql.jdbc.Driver";
	private static String minura_url		= "jdbc:mysql://"+minura_server+":"+minura_porta+"/";
	
	private static Connection minura_con;
	
	public static Connection getConnection(){
		try{
			Class.forName(minura_driver);
			
			try{
				Connection con = DriverManager.getConnection(minura_url, minura_username, minura_password);
				ResultSet rs = con.getMetaData().getCatalogs();
				
				boolean exists = false;
				
				while(rs.next()){
					String dbname = rs.getString(1);
					if(dbname.equals(minura_database)){
						exists = true;
						System.out.println("Database found.\nCollection data.");
					}
				}
				
				if(exists != true){
					String sql = "CREATE DATABASE IF NOT EXISTS "+minura_database+";";
					PreparedStatement createDB = con.prepareStatement(sql);
					createDB.executeUpdate();
					con = DriverManager.getConnection(minura_url+minura_database, minura_username, minura_password);
					System.out.println("Database created!\nCreating default tables");
					PreparedStatement pstmt = con.prepareStatement("CREATE TABLE IF NOT EXISTS tipos (ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(ID), nome varchar(20), UNIQUE(nome));");
					pstmt.executeUpdate();
					pstmt = con.prepareStatement("CREATE TABLE IF NOT EXISTS utilizadores(ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(ID), nome varchar(60), sobrenome varchar(60), email varchar(250), UNIQUE(email), contacto varchar(12), categoria int DEFAULT 1, username varchar(40), UNIQUE(username), password varchar(60), isDeleted bit DEFAULT 0, isOnline bit DEFAULT 0);");
					pstmt.executeUpdate();
					pstmt = con.prepareStatement("CREATE TABLE IF NOT EXISTS stands (ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(ID), nome varchar(60), contacto varchar(12), morada varchar(250), localidade varchar(60), codigoPostal varchar(11), hora_abertura varchar(5), hora_fecho varchar(5), isDeleted bit DEFAULT 0, isOnline bit DEFAULT 0, id_responsavel int NOT NULL);");
					pstmt.executeUpdate();
					con.close();
				}

				con.close();
				minura_con = DriverManager.getConnection(minura_url+minura_database, minura_username, minura_password);
						
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
			
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		} finally{
			if(minura_con != null){
				return minura_con;
			}
		}
		
		return null;
	}
}
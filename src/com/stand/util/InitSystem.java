package com.stand.util;

import java.sql.Connection;

public class InitSystem {
	
	private static Connection con;
	
	
	
	public static boolean fillCreateTables(){
		con = null;
		
		try{
			con = InitConn.createConnection();
			InitConn.createTable(con,"Web", "CREATE TABLE IF NOT EXISTS web (ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(ID), stand_id int(11) NOT NULL, UNIQUE(stand_id));");
			InitConn.createTable(con,"Stands","CREATE TABLE IF NOT EXISTS stands (ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(ID), nome varchar(60), contacto varchar(12), morada varchar(250), localidade varchar(60), codigoPostal varchar(11), hora_abertura varchar(5), hora_fecho varchar(5), isDeleted bit DEFAULT 0, isOnline bit DEFAULT 0, id_responsavel int NOT NULL);");
			InitConn.createTable(con,"Utilizadores","CREATE TABLE IF NOT EXISTS utilizadores(ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(ID), nome varchar(60), sobrenome varchar(60), email varchar(250), UNIQUE(email), contacto varchar(12), categoria int DEFAULT 1, username varchar(40), UNIQUE(username), password varchar(60), isDelete bit DEFAULT 0, isOnline bit DEFAULT 0);");
			InitConn.createTable(con,"Tipos","CREATE TABLE IF NOT EXISTS tipos (ID int NOT NULL AUTO_INCREMENT, PRIMARY KEY(ID), nome varchar(20), UNIQUE(nome));");

		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(con != null){
				con = null;
				return true;
			}
		}
		
		return false;
	}

}

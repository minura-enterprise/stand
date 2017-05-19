package com.stand.service;

import java.sql.Connection;

import com.stand.model.Utilizador;
import com.stand.util.DBConn;

public class SController {
	
	public SController(){
		super();
	}
	
	public boolean controllerWeb(){
		
		Connection con = null;
		boolean exists = false;
		try {
			
			con = DBConn.createConnection();

			DBConn.createTable(con,"CREATE TABLE IF NOT EXISTS utilizadores (ID int NOT NULL AUTO_INCREMENT, username varchar(40), tipo int DEFAULT '1', nome varchar(40), sobrenome varchar(40), nacionalidade varchar(50), morada varchar(200), localidade varchar(60), codigoPostal varchar(11), contacto varchar(10), email varchar(200), password varchar(40), isOnline bit DEFAULT 0, isDeleted bit DEFAULT 0, PRIMARY KEY(ID), UNIQUE (username, email));");
			DBConn.createTable(con,"CREATE TABLE IF NOT EXISTS tipos (ID int NOT NULL AUTO_INCREMENT, nome varchar(40), PRIMARY KEY(ID), UNIQUE(nome));");
			DBConn.insertIntoTable(con, "INSERT INTO tipos (ID, nome) VALUES (NULL, 'user'), (NULL, 'vendedor'), (NULL, 'responsavel'), (NULL, 'administrador');");
			Utilizador u = new Utilizador("Minura", "Enterprise", "Portuguesa", "ATEC", "Palmela", "2830-264", "912345678", "minura@admin", "admin", "admin", false, false, 0);
			u.setTipo(7);
			exists = DBConn.insertIntoTable(con, "INSERT INTO utilizadores (username, tipo, nome, sobrenome, nacionalidade, morada, localidade, codigoPostal, contacto, email, password) VALUES ('"+u.getUsername()+"','"+u.getTipo()+"','"+u.getNome()+"','"+u.getSobrenome()+"','"+u.getNacionalidade()+"','"+u.getMorada()+"','"+u.getLocalidade()+"','"+u.getCodigoPostal()+"','"+u.getContacto()+"','"+u.getEmail()+"','"+u.getPassword()+"')");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(exists != false){
				return true;
			}
		}
		return false;
	}
}

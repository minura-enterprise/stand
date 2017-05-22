package com.stand.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class InitConnManager {
	
	private static String minura_porta		= "3306";
	private static String minura_server		= "localhost";
	private static String minura_username 	= "root";
	private static String minura_password 	= "";
	private static String minura_database 	= "minura_stand";
	
	private static String minura_driver 	= "com.mysql.jdbc.Driver";
	private static String minura_url		= "jdbc:mysql://"+minura_server+":"+minura_porta+"/"+minura_database;
	
	private static Connection minura_con;
	
	public static Connection getConnection(){
		try{
			Class.forName(minura_driver);
			
			try{
				minura_con = DriverManager.getConnection(minura_url, minura_username, minura_password);
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
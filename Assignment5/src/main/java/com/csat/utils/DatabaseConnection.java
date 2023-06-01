/**
 * 
 */
package com.csat.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Jay Patel
 * Class for Database connection
 */
public class DatabaseConnection {
	
/*	public Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javadb1?user=root&password=");			
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException in getConnection()");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("SQLException in getConnection()");
			e.printStackTrace();
		}
		return con;
	}*/
	
	public Connection getConnection() {

		Connection con = null;

		String user = "root";

		String pwd = "admin";

		String url = "jdbc:mysql://localhost:3306/javadb1";

		// Load the Driver

		try {

			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection(url, user, pwd);

			System.out.println("Connection Established");

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;

	}
}

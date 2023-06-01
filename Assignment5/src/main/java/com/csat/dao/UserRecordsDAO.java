/**
 * 
 */
package com.csat.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.csat.models.User;
import com.csat.utils.DatabaseConnection;

/**
 * @author Jay Patel
 * Class to Access and Manipulate data from Database
 *
 */
public class UserRecordsDAO {
	
	public String registerStudent(User user){
		DatabaseConnection databaseConnection = new DatabaseConnection();
		Connection con = databaseConnection.getConnection();
		String message = null;		
		
		try {
			PreparedStatement pst = con.prepareStatement("insert into user(user_name, password, email, contact, city)"
					+ " values(?,?,?,?,?)");
			pst.setString(1, user.getUser_name());
			pst.setString(2, user.getPassword());
			pst.setString(3, user.getEmail());
			pst.setString(4, user.getContact());
			pst.setString(5, user.getCity());				
			int rowCount = pst.executeUpdate();
			if(rowCount > 0) {
				message = "success";
			}else {
				message = "Student Registration failed, Please try again..";
			}
		} catch (SQLException e) {
			System.out.println("Exception occured while registering the student!");
			e.printStackTrace();
		}
		return message;
	}
	
	/*
	 * authorizeStudent() to check user_name exists or not
	 */
	public boolean authorizeStudent(String email) {
		boolean is_exists = studentExists(email);
		return is_exists;
	}

	public boolean authenticateStudent(String id, String password) {
		DatabaseConnection dbCon = new DatabaseConnection();
		Connection con = dbCon.getConnection();
		boolean status = false;
		if(con == null) {
			status = false;
		}else {
			String sql = "SELECT user_name FROM user WHERE email = ? and password = ?";
			PreparedStatement stmt;
			try {
				stmt = con.prepareStatement(sql);
				stmt.setString(1, id);
				stmt.setString(2, password);
				ResultSet rs = stmt.executeQuery();
				if(rs.next()) {
					status = true;
				}else {
					status = false;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return status;
	}
	
	public boolean studentExists(String user_name) {
		DatabaseConnection dbCon = new DatabaseConnection();
		Connection con = dbCon.getConnection();
		if(con == null) {
			return false;
		}else {
			String sql = "SELECT user_name FROM user WHERE email = ?";
			PreparedStatement stmt;
			try {
				stmt = con.prepareStatement(sql);
				stmt.setString(1, user_name);
				ResultSet rs = stmt.executeQuery();
				if(rs.next()) {
					return true;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
}

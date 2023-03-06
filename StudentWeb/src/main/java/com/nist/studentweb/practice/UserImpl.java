package com.nist.studentweb.practice;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserImpl implements User {
	PreparedStatement ps = null;

	@Override
	public void registerUser(UserDTO userDTO) {
		String sql = "INSERT INTO users(firstName, lastName, username, password, checkBox) VALUES(?,?,?,?,?)";
		try {
			ps = DatabaseConnectivity.getConnection().prepareStatement(sql);
			ps.setString(1, userDTO.getFirstName());
			ps.setString(2, userDTO.getLastName());
			ps.setString(3, userDTO.getEmail());
			ps.setString(4, userDTO.getPassword());
			ps.setBoolean(5, userDTO.isCheck());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public boolean userExists(UserDTO userDTO) {
		boolean userExists = false;
		String sql = "SELECT * FROM users WHERE username=? AND password=?";
		try {
			ps = DatabaseConnectivity.getConnection().prepareStatement(sql);
			ps.setString(1, userDTO.getEmail());
			ps.setString(2, userDTO.getPassword());
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				userExists = true;
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return userExists;
	}

}

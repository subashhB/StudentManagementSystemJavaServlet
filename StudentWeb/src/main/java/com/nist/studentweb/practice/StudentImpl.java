package com.nist.studentweb.practice;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentImpl implements Student {
	PreparedStatement ps = null;

	public void addStudent(StudentDTO studentDTO) {
		String sql = "INSERT INTO studentdata(firstName,lastName,email,phoneNo,gender,faculty,semester,province,district,location,ward) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
		try {
			ps = DatabaseConnectivity.getConnection().prepareStatement(sql);
			ps.setString(1, studentDTO.getFirstName());
			ps.setString(2, studentDTO.getLastName());
			ps.setString(3, studentDTO.getEmail());
			ps.setString(4, studentDTO.getPhoneNo());
			ps.setString(5, studentDTO.getGender());
			ps.setString(6, studentDTO.getFaculty());
			ps.setString(7, studentDTO.getSemester());
			ps.setString(8, studentDTO.getProvince());
			ps.setString(9, studentDTO.getDistrict());
			ps.setString(10, studentDTO.getLocation());
			ps.setString(11, studentDTO.getWard());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<StudentDTO> getStudents() {
		List<StudentDTO> studentList = new ArrayList<>();
		String sql = "SELECT * FROM studentdata";
		try {
			ps = DatabaseConnectivity.getConnection().prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				StudentDTO student = new StudentDTO();
				student.setId(rs.getInt("ID"));
				student.setFirstName(rs.getString("firstName"));
				student.setLastName(rs.getString("lastName"));
				student.setEmail(rs.getString("email"));
				student.setPhoneNo(rs.getString("phoneNo"));
				student.setGender(rs.getString("gender"));
				student.setFaculty(rs.getString("faculty"));
				student.setSemester(rs.getString("semester"));
				student.setProvince(rs.getString("province"));
				student.setDistrict(rs.getString("district"));
				student.setLocation(rs.getString("location"));
				student.setWard(rs.getString("ward"));
				studentList.add(student);

			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return studentList;
	}

	@Override
	public void deleteStudent(int id) {
		// TODO Auto-generated method stub
		String sql = "DELETE FROM studentdata WHERE id=?";
		try {
			ps = DatabaseConnectivity.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public void editStudent(StudentDTO studentDTO) {
		// TODO Auto-generated method stub
		String sql = "UPDATE studentdata SET firstName=?, lastName=?, email=?, phoneNo=?, gender=?, faculty=?, semester=?, province=?, district=?, location=?, ward=? WHERE ID=?";
		try {
			ps = DatabaseConnectivity.getConnection().prepareStatement(sql);
			ps.setString(1, studentDTO.getFirstName());
			ps.setString(2, studentDTO.getLastName());
			ps.setString(3, studentDTO.getEmail());
			ps.setString(4, studentDTO.getPhoneNo());
			ps.setString(5, studentDTO.getGender());
			ps.setString(6, studentDTO.getFaculty());
			ps.setString(7, studentDTO.getSemester());
			ps.setString(8, studentDTO.getProvince());
			ps.setString(9, studentDTO.getDistrict());
			ps.setString(10, studentDTO.getLocation());
			ps.setString(11, studentDTO.getWard());
			ps.setInt(12, studentDTO.getId());
			ps.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public StudentDTO getStudent(int id) {
		// TODO Auto-generated method stub
		StudentDTO student = new StudentDTO();
		String sql = "SELECT * FROM studentdata WHERE ID=?";
		try {
			ps = DatabaseConnectivity.getConnection().prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				student.setId(rs.getInt("ID"));
				System.out.println("Id is" + rs.getInt("ID"));
				student.setFirstName(rs.getString("firstName"));
				student.setLastName(rs.getString("lastName"));
				student.setEmail(rs.getString("email"));
				student.setPhoneNo(rs.getString("phoneNo"));
				student.setGender(rs.getString("gender"));
				student.setFaculty(rs.getString("faculty"));
				student.setSemester(rs.getString("semester"));
				student.setProvince(rs.getString("province"));
				student.setDistrict(rs.getString("district"));
				student.setLocation(rs.getString("location"));
				student.setWard(rs.getString("ward"));
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return student;
	}

}

package com.nist.studentweb.practice;

import java.util.List;

public interface Student {
	public void addStudent(StudentDTO studentDTO);

	public List<StudentDTO> getStudents();

	public void deleteStudent(int id);

	public void editStudent(StudentDTO studentDTO);

	public StudentDTO getStudent(int id);
}

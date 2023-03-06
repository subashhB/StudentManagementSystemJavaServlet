package com.nist.studentweb.practice;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddStudentController
 */
@WebServlet("/AddStudentController")
public class AddStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public AddStudentController() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		Student std = new StudentImpl();
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");
		String phoneNo = request.getParameter("phoneNo");
		String gender = request.getParameter("gender");
		String faculty = request.getParameter("faculty");
		String semester = request.getParameter("semester");
		String province = request.getParameter("province");
		String district = request.getParameter("district");
		String location = request.getParameter("location");
		String id = request.getParameter("id");
		String ward = request.getParameter("ward");
		StudentDTO student = new StudentDTO();
		student.setFirstName(firstName);
		student.setLastName(lastName);
		student.setEmail(email);
		student.setPhoneNo(phoneNo);
		student.setGender(gender);
		student.setFaculty(faculty);
		student.setSemester(semester);
		student.setProvince(province);
		student.setDistrict(district);
		student.setLocation(location);
		student.setWard(ward);
		System.out.println(id);
		System.out.println(firstName);
		if (id == null || id.isEmpty()) {
			std.addStudent(student);
		} else {
			int idnum = Integer.parseInt(id);
			student.setId(idnum);
			std.editStudent(student);

		}
		RequestDispatcher rd = request.getRequestDispatcher("Student.jsp");
		request.setAttribute("studentDetails", std.getStudents());
		rd.forward(request, response);

	}

}

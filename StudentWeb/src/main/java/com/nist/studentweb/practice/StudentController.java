package com.nist.studentweb.practice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public StudentController() {
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
		String action = request.getParameter("action");
		String forward = "";
		Student stdnt = new StudentImpl();
		if (action.equals("student")) {
			request.setAttribute("studentDetails", stdnt.getStudents());
			forward = "Student.jsp";
		} else if (action.equals("home")) {
			forward = "Dashboard.jsp";
		} else if (action.equals("studentForm")) {
			forward = "AddStudent.jsp";
		} else if (action.equals("logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			request.setAttribute("logout", "You are logged out!");
			forward = "Login.jsp";
		} else if (action.equals("delete")) {
			int id = Integer.parseInt(request.getParameter("id"));
			stdnt.deleteStudent(id);
			request.setAttribute("studentDetails", stdnt.getStudents());
			forward = "Student.jsp";
		} else if (action.equals("edit")) {
			int id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("student", stdnt.getStudent(id));
			forward = "AddStudent.jsp";
		} else if (action.equals("details")) {
			int id = Integer.parseInt(request.getParameter("id"));
			request.setAttribute("student", stdnt.getStudent(id));
			forward = "StudentDetails.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
		Student studentops = new StudentImpl();

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

	}

}

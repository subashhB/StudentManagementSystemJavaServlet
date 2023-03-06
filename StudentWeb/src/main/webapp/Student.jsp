<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="Navbar.jsp" %>
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-md-10">
		<h2 class="text-center">Student Data Management</h2>
		<div class="card p-2">
			<div >
				<a href="StudentController?action=studentForm" class="btn btn-outline-primary float-start">Add Student</a>
			</div>
		</div>
		<c:if test="${!empty studentDetails}"></c:if>
		<table class="table">
		<thead>
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Phone No.</th>
			<th>Faculty</th>
			<th>Semester</th>
			<th>Actions</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach items="${studentDetails}" var="student">
			<tr>
				<td><c:out value="${student.id}"></c:out></td>
				<td><c:out value="${student.firstName}"></c:out></td>
				<td><c:out value="${student.lastName}"></c:out></td>
				<td><c:out value="${student.phoneNo}"></c:out></td>
				<td><c:out value="${student.faculty}"></c:out></td>
				<td><c:out value="${student.semester}"></c:out></td>
				<td><a class="btn btn-outline-danger me-1" href="StudentController?action=delete&id=${student.id }">Delete</a> | <a class="btn btn-outline-success me-1" href="StudentController?action=details&id=${student.id}">Details</a> | <a class="btn btn-outline-secondary ms-1" href="StudentController?action=edit&id=${student.id}">Edit</a>
			</tr>
			</c:forEach>
		</tbody>
		</table>
		</div>
	</div>
	
</body>
</html>
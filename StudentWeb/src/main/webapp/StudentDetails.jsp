<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Student Details - ${student.firstName} ${student.lastName}</title>
</head>
<%@ include file = "Navbar.jsp" %>
<body>
	<div class="container">
		<h3>${student.firstName} ${student.lastName}</h3>
		<hr>
		<div class="row">
			<div class="col-md-6" style="margin-bottom: 20px;">
				<h4><u>Contact Info</u></h4>
				<b>E-mail Address: </b>${student.email }<br>
				<b>Phone No.: </b>${student.phoneNo }
			</div>
			<div class="col-md-6" style="margin-top: 20px;">
				<b>Gender: </b> ${gender}
				<c:if test="${student.gender == 'male'}">
        			<c:out value="Male"/>
			    </c:if>
			    <c:if test="${student.gender == 'female'}">
			        <c:out value="Female"/>
			    </c:if>
			    <c:if test="${student.gender == 'others'}">
			        <c:out value="Others"/>
			    </c:if>
			</div>
		</div>
		<span></span>
		<div class="row " style="margin-bottom: 20px;">
			<div class="col-md-12">
				<b>Faculty: </b>${student.faculty }<br>
				<b>Semester: </b>${student.semester }
			</div>
		</div>
		<h4>Address</h4>
		<div class="row">
			<div class="col-md-5">
				<b>Province: </b>${student.province }<br>
				<b>Village/City: </b>${student.location }
			</div>
			<div class="col-md-5">
				<b>District: </b>${student.district }<br>
				<b>Ward: </b>${student.ward }
			</div>
		</div>
		
	</div>
</body>
</html>
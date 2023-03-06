<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="Navbar.jsp" %>
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-md-6 text-center">
			<div class="card m-5 p-5">
				<h1 class="h3 mb-3 fw-normal">Student Form</h1>	
				<form class="container-fliud " action="AddStudentController" method="post">
					<input type="hidden" name="id" value="${student.id}"></input>
					<div class="row justify-content-center">
						<div class="col-md-5">
							<input type="text" class="form-control" value="${student.firstName}" name="firstName" placeholder="First Name">
						</div>
						<div class="col-md-5 ms-1">
							<input type="text" class="form-control" value="${student.lastName}" name="lastName" placeholder="Last Name">
						</div>
					</div>
					<div class="row mt-3 ms-4">
						<div class="col-md-8 ms-1 d-flex justify-content-between">
							<div class="col-md-3">
								<label class="form-label">Gender: </label>
							</div>
							<div class="col-md-3">
								<input type="radio" value="male" ${student.gender == 'male'?'checked' : ''} name="gender"> Male
							</div>
							<div class="col-md-3">
								<input type="radio" value="female" ${student.gender == 'female'?'checked' : ''} name="gender"> Female
							</div>
							<div class="col-md-3">
								<input type="radio" value="others" ${student.gender == 'others'?'checked' : ''} name="gender"> Others
							</div>							
						</div>
					</div>
					<div class="row mt-3 ms-4">
						<div class="col-md-6">
							<label class="col-md-4 float-start">Faculty: </label>
				            <select	class="col-md-6 float-start text" name="faculty">
				              <option value="" disabled selected>------</option>
				              <option value="BCA" ${student.faculty == 'BCA'? 'selected':'' }> BCA</option>
				              <option value="BIM" ${student.faculty == 'BIM'? 'selected':'' }> BIM</option>
				              <option value="CSIT" ${student.faculty == 'CSIT'? 'selected':'' }> B.Sc. CSIT</option>
				            </select>
						</div>
					</div>
					<div class="row mt-3 ms-4">
						<div class="col-md-6 ms-2">
							<label class="col-md-4 float-start">Semester: </label>
				            <select	class="col-md-6 float-start text" name="semester">
				              <option value="" disabled selected>------</option>
				              <option value="First" ${student.semester == 'First'? 'selected':'' }> First</option>
				              <option value="Second" ${student.semester == 'Second'? 'selected':'' }> Second</option>
				              <option value="Third" ${student.semester == 'Third'? 'selected':'' }> Third</option>
				              <option value="Fourth" ${student.semester == 'Fourth'? 'selected':'' }> Fourth</option>
				              <option value="Fifth" ${student.semester == 'Fifth'? 'selected':'' }> Fifth</option>
				              <option value="Sixth" ${student.semester == 'Sixth'? 'selected':'' }> Sixth</option>
				              <option value="Seventh" ${student.semester == 'Seventh'? 'selected':'' }> Seventh</option>
				              <option value="Eight" ${student.semester == 'Eight'? 'selected':'' }> Eight</option>
				            </select>
						</div>
					</div>
					<div class="row mt-3 ms-4">
						<div class="col-md-5 ms-3">
				            <select	class="col-md-8 mt-1 float-start text" name="province">
				              <option value="" disabled selected>Province</option>
				              <option value="province 1" ${student.province == 'province 1'? 'selected':'' }> Province 1</option>
				              <option value="Madesh" ${student.province == 'Madhesh'? 'selected':'' }>Madesh Province</option>
				              <option value="Bagmati" ${student.province == 'Bagmati'? 'selected':'' }>Bagmati Province</option>
				              <option value="Gandaki" ${student.province == 'Gandaki'? 'selected':'' }>Gandaki Province</option>
				              <option value="Lumbini" ${student.province == 'Lumbini'? 'selected':'' }>Lumbini Province</option>
				              <option value="Karnali" ${student.province == 'Karnali'? 'selected':'' }>Karnali Province</option>
				              <option value="Sudurpaschim"  ${student.province == 'Sudurpaschim'? 'selected':'' }>Sudurpaschim Province</option>
				            </select>
						</div>
						<div class="col-md-5 ms-4">
							<input type="text" class="form-control" value="${student.district}" name="district" placeholder="District">
						</div>
					</div>
					<div  class="row mt-3">
						<div class="col-md-6 ms-5">
							<input type="text" class="form-control" value="${student.location}" name="location" placeholder="Village/City">
						</div>
						<div class="col-md-3 ms-5">
							<input type="text" class="form-control" value="${student.ward}" name="ward" placeholder="Ward No.">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-md-10 offset-1">
							<input type="text" class="form-control" value="${student.email}" name="email" placeholder="Email Address">
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-md-10 offset-1">
							<input type="text" class="form-control" name="phoneNo" value="${student.phoneNo}" placeholder="Contact Info">
						</div>
					</div>
					<div class="d-flex justify-content-center mt-3">
						<hr class="col-md-10  mt-2"/>
					</div>
					<a class="col-md-5 mt-2 btn btn-outline-secondary" href="StudentController?action=student">Cancel</a>
					<input class="col-md-5 mt-2 btn btn-outline-primary" type="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
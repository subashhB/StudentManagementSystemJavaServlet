<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row justify-content-center">
		<div class="col-md-6 text-center">
			<div class="card m-5 p-5">
				<h1 class="h3 mb-3 fw-normal">Register Here</h1>	
				<form class="container-fliud " action="RegisterController" method="post">
					<div class="row justify-content-center">
						<div class="col-md-5">
							<input type="text" class="form-control" name="firstName" placeholder="First Name">
						</div>
						<div class="col-md-5 ms-1">
							<input type="text" class="form-control" name="lastName" placeholder="Last Name">
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-md-10 offset-1">
							<input type="text" class="form-control" name="email" placeholder="Email Address">
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-md-10 offset-1">
							<input type="password"  class="form-control" name="password" placeholder="Password">
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-md-10 offset-1">
							<input type="password" class="form-control"  name="cpassword" placeholder="Confirm Password">
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-md-8">
							<input  type="checkbox" value="true" name="checkBox"> I Agree Terms and Conditions
						</div>
					</div>
					<div class="d-flex justify-content-center mt-3">
						<hr class="col-md-10  mt-2"/>
					</div>
					<input class="col-md-10 mt-2 btn btn-lg btn-primary" type="submit" value="Sign Up">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
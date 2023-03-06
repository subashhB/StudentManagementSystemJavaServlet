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
<body class="text-center">
       <div class="row justify-content-center">
           <div class="col-md-4">
            	<div class="card m-5 p-5">
            		<form action="LoginController" method="post">
            		<span style="color: red">${message}</span>
            		<span style="color: green">${logout}</span>
				    <h1 class="h3 mb-3 fw-normal">Log-In to your Account</h1>					
				    <div class="form-floating">
				      <input type="email" name="username" class="form-control" id="floatingInput" placeholder="name@example.com">
				      <label for="floatingInput">Username</label>
				    </div>
				    <div class="form-floating">
				      <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password">
				      <label for="floatingPassword">Password</label>
				    </div>
				    <div class="checkbox mb-3">
				      <label>
				        <input type="checkbox" value="remember-me"> Remember me
				      </label>
				    </div>
				    <input class="w-100 btn btn-lg btn-primary" type="submit" value="Log In">
				  </form>	
            	</div>  
           </div>
      </div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="./css/adminLogin.css">
</head>
<body class="stylebody">
<form class="card" action="gotoAdminLogin.jsp"  method="post" id="log">
	<div class="form-group" >
    	<label for="exampleInputEmail1">Enter Your Name</label>
    	<input type="text" class="form-control"  placeholder="Enter Name" name="name">
 	</div>
	<div class="form-group" >
    	<label for="exampleInputEmail1">Email address</label>
    	<input type="email" class="form-control"  placeholder="Enter email" name="email" >
    	<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
 	</div>
  	<div class="form-group">
    	<label for="exampleInputPassword1">Password</label>
    	<input type="password" class="form-control"  placeholder="Password" name="pass">
  	</div>
  	<button type="submit" class="btn btn-primary">Login</button>
</form>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</body>
</html>
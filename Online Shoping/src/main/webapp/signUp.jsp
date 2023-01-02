<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
<link rel="stylesheet" href="./css/signUp.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body class="bdy">
	  
			<form onsubmit="return uform()" action="addSign.jsp" method="post" class="card" id="clr">
			<div class="row">
    			<div class="col">
					<div class="mb-3">
			    		<label for="exampleInputName" class="form-label">Name</label>
			    		<input type="text" class="form-control" id="exampleInputName" aria-describedby="nameHelp" name="name">
			    		<br><span class="error" id="usn"></span>
			  		</div>
			  		<div class="mb-3">
			    		<label for="exampleInputEmail1" class="form-label">Email address</label>
			    		<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
			    		<br><span class="error" id="eml"></span>
			    		<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
			  		</div>
			  		<div class="mb-3">
			    		<label for="exampleInputPassword1" class="form-label">Password</label>
			    		<input type="password" class="form-control" id="exampleInputPassword1" name="pass">
			    		<br><span class="error" id="psw"></span>
			  		</div>
			  		<div class="mb-3">
			    		<label for="exampleInputPassword1" class="form-label">Repassword</label>
			    		<input type="password" class="form-control" id="exampleInputRepassword1" name="repass">
			  		</div>
			  		
			 		<div id="center"><button type="submit" class="btn btn-primary" >Sign Up</button></div>
			 	</div>
			 	<div class="col" id="signH">
	 				<div class="card-body" >
	 					<p class="card-text" id="success"></p>
	    				<h5 class="card-title">Sign Up</h5>
	    				<h6 class="nameShop">Village Online Market</h6>
	    				<p class="card-text">Online shopping or e-shopping is searching for and purchasing goods and services over the Internet through the use of a web browser. The main allure of online shopping is that consumers can find and purchase items they need (which are then shipped to their front door) without ever leaving the house. Today, almost anything can be purchased through online shopping, amounting to billions of dollars a year in sales.</p>
	    				<a href="logIn.jsp" class="btn btn-primary" id="Login">Login</a>
					</div>
				</div>
		 		</div>
			</form>
		
		

<script type="text/javascript" src="./js/signUp.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js" integrity="sha384-cuYeSxntonz0PPNlHhBs68uyIAVpIIOZZ5JqeqvYYIcEL727kskC66kF92t6Xl2V" crossorigin="anonymous"></script>
</body>
</html>
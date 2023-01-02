<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%
String name=(String)session.getAttribute("user"); 
String email=(String)session.getAttribute("mail"); 
String pass=(String)session.getAttribute("pass");
int id = (Integer) session.getAttribute("id");
%>
<meta charset="ISO-8859-1">
<title>Failed Settings</title>
<link rel="stylesheet" href="./css/settings.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
<ul class="nav justify-content-end">

  <li class="nav-item">
    <a class="nav-link active" href="Home.jsp">
    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  			<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
		</svg>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="Settings.jsp">
    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
  <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
  <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
</svg>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
  <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
</svg></a>
  </li>
   <li class="nav-item" >
    <a href=<% 
    		if(name != null){
    			out.print("Profile.jsp");
    		}else{
    			out.print("logIn.jsp");
    		}
    %> class="nav-link" href="profile.jsp"><% 
    		if(name != null){
    			out.print("<svg xmlns='http://www.w3.org/2000/svg' width='16' height='16' fill='currentColor' class='bi bi-person-check-fill' viewBox='0 0 16 16'><path fill-rule='evenodd' d='M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z'/><path d='M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z'/></svg>");
    		}else{
    			out.print("");
    		}
    %>
    <span id="name"><%
	if(name != null){
		out.print(name);
	}else{
		out.print("Login");
	}
%></span></a>
  </li>
  <li class="nav-item" id="logout">
    <a class="nav-link"  href="LogOut.jsp">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
</svg>
    </a>
  </li>
</ul>

<div class="Headig">
	Online Shopping market for villagers 
</div>
<div class="log">
	<img width="35px" alt="log" src="https://www.quotewerks.com/images/FeatureImages/Carts_Round.png">
</div>
<form action="addSettings.jsp" method="post" class="card" style="width: 90%;">
<div class="row">
    <div class="col">

  <div class="form-group">
    <label for="exampleInputNumber">Phone Number</label>
    <input type="text" class="form-control" id="exampleInputNumber" aria-describedby="noHelp" placeholder="Enter Phone Number" name="number">
    <small id="noHelp" class="form-text text-muted">We'll never share your Phone number with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPlace">Place</label>
    <input type="text" class="form-control" id="exampleInputPlace" aria-describedby="placeHelp" placeholder="Enter Place" name="place">
  </div>
   <div class="form-group">
    <label for="exampleInputHouse">House</label>
    <input type="text" class="form-control" id="exampleInputHouse" aria-describedby="houseHelp" placeholder="Enter House name" name="house">
  </div>
   <div class="form-group">
    <label for="exampleInputHome">Home Town</label>
    <input type="text" class="form-control" id="exampleInputHome" aria-describedby="homeHelp" placeholder="Enter Home Town" name="homeTown">
  </div>
  <div class="form-group">
    <label for="exampleInputPost">Post office</label>
    <input type="text" class="form-control" id="exampleInputpost" aria-describedby="postHelp" placeholder="Enter Post Office" name="post">
  </div>
   <div class="form-group">
  </div>
    <label for="exampleInputDistrict">District</label>
    <input type="text" class="form-control" id="exampleInputDistrict" aria-describedby="districtHelp" placeholder="Enter District" name="dst">
  </div>
  <div class="col">
   <div class="form-group">
    <label for="exampleInputState">State</label>
    <input type="text" class="form-control" id="exampleInputState" aria-describedby="StateHelp" placeholder="Enter State" name="state">
  </div>
  <div class="form-group">
    <label for="exampleInputPin">Pin</label>
    <input type="text" class="form-control" id="exampleInputPin" aria-describedby="pinHelp" placeholder="Enter PIN NO" name="pin">
  </div>
  
  <button type="submit" class="btn btn-primary">Submit</button>
  <div class="alert alert-danger" role="alert">
 Sorry Try Again<br>
 Or Contact admin 9847877534
</div>
  </div>
 </div>
</form>


</body>
</html>
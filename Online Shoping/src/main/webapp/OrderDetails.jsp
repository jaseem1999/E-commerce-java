<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.core.sign.DAO.ProductDAO"%>
<%@page import="main.core.sign.Bean.Product"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Array"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<link  rel="stylesheet" href="./css/AdminHome.css" >
</head>
<body>
<%
String name = (String)session.getAttribute("aname");
String email = (String)session.getAttribute("aemail"); 
%>

<%

 String getID = request.getParameter("getID");
int id = 0;
String sname=null;
String smail=null;
String spass= null;
String snum= null;
String splace= null;
String shouse= null;
String shmtwn= null;
String spost= null;
String sdst= null;
String sstate= null;
int spin = 0;
int coUser = 0;
int proCount = 0;

int proId = 0;
String proName = null;
String proDes = null;
String proImg = null;
String proPrice = null;
String proOffer = null;
int UserId = 0;
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
PreparedStatement stm =con.prepareStatement("select * from user_table;");
ResultSet rs=stm.executeQuery();
PreparedStatement stms =con.prepareStatement("select * from user_table where id="+getID+";");
ResultSet rss=stms.executeQuery();
while(rs.next()) {
	coUser++;
	id = rs.getInt(1);
	sname=rs.getString(2);
	smail=rs.getString(3);
	spass=rs.getString(4);
	snum=rs.getString(5);
	splace=rs.getString(6);
	shouse=rs.getString(7);
	shmtwn=rs.getString(8);
	spost=rs.getString(9);
	sdst=rs.getString(10);
	sstate=rs.getString(11);
	spin=rs.getInt(12);
}






}catch(Exception e){
	
}

%>
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection Ocon = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
	PreparedStatement Ostm =Ocon.prepareStatement("select * from cart");
	ResultSet Ors=Ostm.executeQuery();
	

%>
<ul class="nav justify-content-end">

  <li class="nav-item">
    <a class="nav-link active" href="AdminHome.jsp">
    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house" viewBox="0 0 16 16">
  			<path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.708L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.647a.5.5 0 0 0 .708-.708L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
		</svg>
    </a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">
    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
  <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
  <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
</svg>
    </a>
  </li>
 
  <li class="nav-item" id="logout">
    <a class="nav-link"  href="AdminLogout.jsp">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
</svg>
    </a>
  </li>
</ul>

  <div class="row" id="rowID">
  	<div class="col-s">
<div class="list-group" id="mainItems">
  <a href="#" class="list-group-item list-group-item-secondary">Managing items</a>


  <a href="AdminHome.jsp" class="list-group-item list-group-item-action list-group-item ">Home</a>
  <a href="productAdd.jsp" class="list-group-item list-group-item-action list-group-item">Add Product</a>
  <a href="OrderDetails.jsp" class="list-group-item list-group-item-action list-group-item-action active">Show Orders</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item">A simple danger list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item">A simple warning list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item">A simple info list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item">A simple light list group item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item">A simple dark list group item</a>
</div>
</div>
<div class="col-md" >
<div id="tableOrder">
<table class="table table-success table-striped">
<tr>
	<th>Product ID</th>
	<th>Name</th>
	<th>Description</th>
	<th>Image</th>
	<th>Price</th>
	<th>Offer</th>
	<th>Costumer ID</th>
</tr>
<%
while(Ors.next()) {
%>
<tr>
 <td><%=proId= Ors.getInt(1)%></td>
 <td><%=proName = Ors.getString(2)%></td>
 <td><%=proDes = Ors.getString(3)%></td>
 <td><img src="<%=proImg = Ors.getString(4)%>" width= 40px/></td>
 <td><%=proPrice = Ors.getString(5)%></td>
 <td><%=proOffer = Ors.getString(6)%></td>
 <td><%=UserId = Ors.getInt(7)%></td>
</tr>
<tr>
<%
   } %>
 <%
}catch(Exception e){
	
}
%>
</table>
</div>
	

</div>

</div>
<div class="row" id="rowID" >
  	<div class="col-s">
  		<form action="OrderDetails.jsp" method="post" >
  			<div class="form-group">
    			<label style="color: white;">Enter Costumer id</label>
   	 			<input type="text"  id="exampleInputText" aria-describedby="Help" name="getID">
   	 			<button type="submit" class="btn btn-primary">OK</button>
  			</div>
  			
		</form>
  	</div>
  	<div class="col-md" >
  		<table class="table table-secondary table-hover">
			  <thead>
			    <tr>
			      <th scope="col">ID</th>
			      <th scope="col">Name</th>
			      <th scope="col">Email</th>
			      <th scope="col">Number</th>
			      <th scope="col">Place</th>
			      <th scope="col">House</th>
			      <th scope="col">Home T</th>
			      <th scope="col">Post</th>
			      <th scope="col">Dst</th>
			      <th scope="col">State</th>
			      <th scope="col">Pin</th>
			    </tr>
			  </thead>
			  <tbody>
			    
			    <%
			    try{
			    Class.forName("com.mysql.cj.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
			    PreparedStatement stms =con.prepareStatement("select * from user_table where id="+getID+";");
			    ResultSet rss=stms.executeQuery();
			    while(rss.next()) {
			    
			    %>
			    <tr>
			      <td><%=id = rss.getInt(1)%></td>
			      <td><%=sname=rss.getString(2)%></td>
			      <td><%=smail=rss.getString(3)%></td>
			      <td><%=snum=rss.getString(5)%></td>
			      <td><%=splace=rss.getString(6)%></td>
			      <td><%=shouse=rss.getString(7)%></td>
			      <td><%=shmtwn=rss.getString(8)%></td>
			      <td><%=spost=rss.getString(9)%></td>
			      <td><%=sdst=rss.getString(10)%></td>
			      <td><%=sstate=rss.getString(11)%></td>
			      <td><%=spin=rss.getInt(12)%></td>
			    </tr>
			    <%
			    }
			    }catch(Exception e){
			    
			    }
			    %>
			    
			  </tbody>
		</table>
  	</div>
</div>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

</body>
</html>
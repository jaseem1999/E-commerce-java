<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String pname= request.getParameter("p-name");
String pimg= request.getParameter("p-img");
String pdesc= request.getParameter("p-desc");
String pprice= request.getParameter("p-price");
String poffer= request.getParameter("p-offer");
int status = 0;
try{
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection pcon = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
	PreparedStatement stm = pcon.prepareStatement("insert into product_table(name,img,description,price,offer)values('"+pname+"','"+pimg+"','"+pdesc+"','"+pprice+"','"+poffer+"')");
	status = stm.executeUpdate();
}catch(Exception e){
	
}
if(status>0){
	response.sendRedirect("AdminHome.jsp");
}else{
	
}
%>
<%=pname %><br>
<%=pimg %><br>
<%=pdesc %><br>
<%=pprice %><br>
<%=poffer %><br>
</body>
</html>
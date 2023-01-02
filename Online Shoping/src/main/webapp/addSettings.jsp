<%@page import="main.core.sign.Bean.Settings"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
String number =request.getParameter("number");
String place =request.getParameter("place");
String hmtTwn =request.getParameter("homeTown");
String house =request.getParameter("house");
String post = request.getParameter("post");
String dst = request.getParameter("dst");
String state = request.getParameter("state");
String pin = request.getParameter("pin");

int id = (Integer) session.getAttribute("id");
Settings usr=new Settings();
int status =0;
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
	PreparedStatement stm = con.prepareStatement("update user_table set number='"+number+"', place='"+place+"', house='"+house+"', homeTown='"+hmtTwn+"', post='"+post+"',district='"+dst+"', state='"+state+"', pin="+pin+" where id="+id);
	status = stm.executeUpdate();
} catch (Exception e) {

}
%>



	<%
		if(status>0){
			
			response.sendRedirect("AginLog.jsp");
		}else{
			response.sendRedirect("FailedSettings.jsp");
		}
	%>
</body>
</html>
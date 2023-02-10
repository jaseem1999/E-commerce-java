<%@page import="java.sql.ResultSet"%>
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
String name = request.getParameter("name");
String email =request.getParameter("email");
String pass = request.getParameter("pass");
	int id = 0;
	String sname=null;
	String smail=null;
	String spass= null;
	int status = 0;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
		PreparedStatement stm =con.prepareStatement("select * from admin_login where name ='"+name+"' and email ='"+email+"' and password ='"+pass+"';");
		ResultSet rs=stm.executeQuery();
		while(rs.next()) {
			id = rs.getInt(1);
			sname=rs.getString(2);
			smail=rs.getString(3);
			spass=rs.getString(4);
		}
		if(sname != null && smail != null && spass != null){
			status = 1;
		}else{
			status = 0;
		}
	}catch(Exception e){
		
	}
	if(status > 0){
		response.sendRedirect("AdminHome.jsp");
	}else{
		response.sendRedirect("AdminLoginFailed.jsp");
	}
	
%>
</body>
</html>

<%@page import="java.net.CookieStore"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="main.core.sign.DAO.LoginUser"%>
<%@page import="main.core.sign.DAO.userDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="main.core.sign.Bean.User"%>

<%@page import="javax.servlet.http.Cookie" %>
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
	String email =request.getParameter("email");
	String pass =request.getParameter("pass");
	userDAO.loginAction(email, pass);
	LoginUser lu= new LoginUser();
	User us = new User();
	try {
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
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
		PreparedStatement stm =con.prepareStatement("select * from user_table where  email='"+email+"' and password='"+pass+"';");
		ResultSet rs=stm.executeQuery();
		while(rs.next()) {
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
		session.setAttribute("pass", spass);
		session.setAttribute("id", id);
		session.setAttribute("user", sname);
		session.setAttribute("mail", smail);
		session.setAttribute("snum", snum);
		session.setAttribute("splace", splace);
		session.setAttribute("shouse", shouse);
		session.setAttribute("shmtwn", shmtwn);
		session.setAttribute("sdst", sdst);
		session.setAttribute("sstate", sstate);
		session.setAttribute("spin", spin);
		session.setAttribute("spost", spost);
		
	} catch (Exception e) {
		
	}
	
		int i = userDAO.loginAction(email, pass);
			if(i>0){
				response.sendRedirect("Home.jsp");
			}else{
				response.sendRedirect("FailedSingUp.jsp");
			}
		
	%>
	
</body>
</html>
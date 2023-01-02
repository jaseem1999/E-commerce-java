<%@page import="main.core.sign.DAO.userDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="usr" class="main.core.sign.Bean.User"></jsp:useBean>
	<jsp:setProperty property="*" name="usr"/>
	<%
		int i = userDAO.SaveUser(usr);	
			if(i>0){
				response.sendRedirect("SuccessSingUp.jsp");
			}else{
				response.sendRedirect("FailedSingUp.jsp");
			}
		
	%>
</body>
</html>
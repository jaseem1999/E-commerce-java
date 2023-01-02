<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
</head>
<body>
<%! 
	String product_name =null;
	String product_image =null;
	String product_description =null;
	String product_price=null;
	String  product_offer=null;
	
	%>
	<% 
	String email=(String)session.getAttribute("mail"); 
	int product_id=Integer.parseInt(request.getParameter("id"));
	int userid = (Integer) session.getAttribute("id");
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
		PreparedStatement stm =con.prepareStatement("select * from product_table where id='"+product_id+"'");
		ResultSet rs=stm.executeQuery();
	while(rs.next())
		{
		 product_name=rs.getString(2);
		 product_image=rs.getString(3);
		 product_description=rs.getString(4);
		 product_price=rs.getString(5);
		 product_offer=rs.getString(6);
		}
	}
	catch(Exception e)
	{
		
	}
	
	int status =0;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
		PreparedStatement stm = con.prepareStatement("insert into cart(product_name,des,img,product_price,product_offer,user_id)values('"+product_name+"','"+product_description+"','"+product_image+"','"+product_price+"','"+product_offer+"',"+userid+");");
		status = stm.executeUpdate();
	} catch (Exception e) {
		
	}
	
	
	%>
	<%
		if(status > 0){	
			response.sendRedirect("Cart.jsp?id="+userid);
		}else{
			response.sendRedirect("FailedSingUp.jsp");
		}
	%>
	
	
</body>

</html>
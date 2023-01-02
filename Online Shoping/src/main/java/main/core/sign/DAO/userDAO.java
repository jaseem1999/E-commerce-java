package main.core.sign.DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import main.core.sign.Bean.Settings;
import main.core.sign.Bean.User;



public class userDAO {
	public static int SaveUser(User usr) 
	{
		int status =0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
			PreparedStatement stm = con.prepareStatement("insert into user_table(name,email,password)values(?,?,?)");
			if(usr.getName() == null || usr.getEmail() == null || usr.getPass() == null ) {
				status = 0;
			}else {
				stm.setString(1, usr.getName());
				stm.setString(2, usr.getEmail());
				stm.setString(3, usr.getPass());
				status = stm.executeUpdate();
			}
			con.close();
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return status;	
	}
	
//	@SuppressWarnings("null")
	public static int loginAction(String email,String pwd)
	{
		int status = 0;
		try {
			String sname=null;
			String smail=null;
			String pass=null;
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
			PreparedStatement stm =con.prepareStatement("select * from user_table where email='"+email+"'"+" and password='"+pwd+"'");
			ResultSet rs=stm.executeQuery();
			User us = new User();
			while(rs.next()) {
				sname=rs.getString(2);
				smail=rs.getString(3);
				pass=rs.getString(4);
			}
			
			
			
			System.out.println(sname+" is" );
			System.out.println(smail+" is  " + email );
			System.out.println(pass+" is  "+pwd );
			if(smail !=null && pass != null) {
				status = 1;
				
			}else {
				status = 0;
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
			
	}
	
}

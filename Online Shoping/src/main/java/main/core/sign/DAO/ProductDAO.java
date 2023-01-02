package main.core.sign.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import main.core.sign.Bean.Product;



public class ProductDAO {
	public static List<Product> proDetails() {
		ArrayList<Product> li=new ArrayList<Product>();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_crud","root", "Love1999@MySQL");
			PreparedStatement stm =con.prepareStatement("select * from product_table");
			ResultSet rs=stm.executeQuery();
			while(rs.next()) {
				Product em = new Product();
				em.setProid(rs.getInt(1));
				em.setName(rs.getString(2));
				em.setImg(rs.getString(3));
				em.setDes(rs.getString(4));
				em.setPrice(rs.getString(5));
				em.setOffer(rs.getString(6));
				li.add(em);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		return li;
	}
	
	
}

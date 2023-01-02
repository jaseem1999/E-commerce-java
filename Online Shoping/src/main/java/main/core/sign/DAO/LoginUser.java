package main.core.sign.DAO;

import java.io.Serializable;

public class LoginUser implements Serializable {
	private String name;
	private String email;
	private String pass;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LoginUser() {
		System.out.println("Login added");
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
}

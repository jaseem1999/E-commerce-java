package main.core.sign.Bean;

import java.io.Serializable;

public class User implements Serializable {
	private int id;
	private String name;
	private String email;
	private String pass;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public User() {
		System.out.println("userCreated");
		System.out.println(name);
		System.out.println(email);
		System.out.println(pass);
		
	}

	
	
}

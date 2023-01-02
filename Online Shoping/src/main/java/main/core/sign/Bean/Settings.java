package main.core.sign.Bean;

import java.io.Serializable;

public class Settings implements Serializable {
	private String number;
	private String place;
	private String house;
	private String hmtwn;
	private String post;
	private String dst;
	private String state;
	private int pin;
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getHmtwn() {
		return hmtwn;
	}
	public void setHmtwn(String hmtwn) {
		this.hmtwn = hmtwn;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getDst() {
		return dst;
	}
	public void setDst(String dst) {
		this.dst = dst;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	public Settings() {
		System.out.println("Added Settings");
	}
	
	
}

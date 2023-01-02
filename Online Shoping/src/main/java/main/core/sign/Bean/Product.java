package main.core.sign.Bean;

import java.io.Serializable;

public class Product implements Serializable {
	private int proid;
	private String name;
	private String img;
	private String des;
	private String price;
	private String offer;
	private int usrId;
	public int getProid() {
		return proid;
	}
	public void setProid(int proid) {
		this.proid = proid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	public String getOffer() {
		return offer;
	}
	public void setOffer(String offer) {
		this.offer = offer;
	}
	public Product() {
		System.out.println("Product Added!");
	}
	@Override
	public String toString() {
		return "Product [proid=" + proid + ", name=" + name + ", img=" + img + ", des=" + des + ", price=" + price
				+ ", offer=" + offer + "]";
	}
	
}

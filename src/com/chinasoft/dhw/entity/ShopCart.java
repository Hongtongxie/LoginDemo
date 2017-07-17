package com.chinasoft.dhw.entity;

public class ShopCart {
	private String pname;
	private String color;
	private String size;
	private int number;
	private double price;
	public ShopCart(){}
	public ShopCart(String pname,String color,String size,int number,double price){
		this.pname = pname;
		this.color = color;
		this.size = size;
		this.number = number;
		this.price = price;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String toString(){
		return this.pname +"   "+ this.color +"   "+ this.size +"   "+ this.number +"   "+ this.price ;
	}

}

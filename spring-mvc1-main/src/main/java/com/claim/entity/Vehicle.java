package com.claim.entity;

import java.sql.Date;
import javax.persistence.*;

@Entity
@Table(name = "vehicle")
public class Vehicle {

	@Id
	@Column(name = "vin")
	private String vin;
	
	@Column(name = "manufacturer_Name")
	private String manufacturerName;
	
	@Column(name = "model")
	private String model;
	
	@Column(name = "car_description")
	private String carDescription;
	
	@Column(name = "odometer")
	private int odometer;
	
	//Date of purchase by dealer
	@Column(name = "dop_dealer")
	private Date dopDealer;
	
	@Column(name = "price")
	private double price;

	//pathname for image
	//private String imgPathName;
	
	public Vehicle() {
		}
	/*
	 public String getImgPathName() { return imgPathName; }
	  public void setImgPathName(String imgPathName) { imgPathName =
	 "/spring-mvc1/src/main/resources/images/"; this.imgPathName = imgPathName; }
	 */

	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getManufacturerName() {
		return manufacturerName;
	}
	public void setManufacturerName(String manufacturerName) {
		this.manufacturerName = manufacturerName;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getCarDescription() {
		return carDescription;
	}
	public void setCarDescription(String carDescription) {
		this.carDescription = carDescription;
	}
	public int getOdometer() {
		return odometer;
	}
	public void setOdometer(int odometer) {
		this.odometer = odometer;
	}
	public Date getDopDealer() {
		return dopDealer;
	}
	public void setDopDealer(Date dopDealer) {
		this.dopDealer = dopDealer;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Vehicle [vin=" + vin + ", manufacturerName=" + manufacturerName + ", model=" + model
				+ ", carDescription=" + carDescription + ", odometer=" + odometer + ", dopDealer=" + dopDealer
				+ ", price=" + price + "]";
	}
}

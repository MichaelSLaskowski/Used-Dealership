package com.claim.entity;

import java.sql.Date;
import javax.persistence.*;

@Entity
@Table(name="sale")
public class Sale {

	@Id
	@Column(name="time_of_sale")
	private String timeOfSale;
	
	@Column(name="dop_buyer")
	private Date dopBuyer;
	
	@Column(name="amount")
	private double amount;
	
	@Column(name="isDiscounted")
	private boolean isDiscounted;
	//FK into table customer relationship annotation//
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="customer_ID")
	private Customer c;
	private int custId;
	
	//FK into table vehicle relationship annotation//
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="vehicle_ID")
	private Vehicle v;
	
	public Sale() {	}
	
	public Customer getC() {
		return c;
	}
	public void setC(Customer c) {
		this.c = c;
	}
	public Vehicle getV() {
		return v;
	}

	public void setV(Vehicle v) {
		this.v = v;
	}
	public String getTimeOfSale() {
		return timeOfSale;
	}
	public void setTimeOfSale(String timeOfSale) {
		this.timeOfSale = timeOfSale;
	}
	public Date getDopBuyer() {
		return dopBuyer;
	}
	public void setDopBuyer(Date dopBuyer) {
		this.dopBuyer = dopBuyer;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public boolean isDiscounted() {
		return isDiscounted;
	}
	public void setDiscounted(boolean isDiscounted) {
		this.isDiscounted = isDiscounted;
	}
	public int getCustId() {
		return custId;
	}
	public void setCustId(int custId) {
		this.custId = custId;
	}
}

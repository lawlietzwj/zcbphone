package com.jczcb.bean;

import java.sql.Timestamp;

/**
 * @author Lawliet
 */
public class WeightInfo {
	private int id;
	private String number;
	private String resource;
	private String car;
	private String weightMember;
	private String drawer;
	private String loadingMember;
	private double weight;
	private Timestamp date;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getResource() {
		return resource;
	}
	public void setResource(String resource) {
		this.resource = resource;
	}
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	public String getWeightMember() {
		return weightMember;
	}
	public void setWeightMember(String weightMember) {
		this.weightMember = weightMember;
	}
	public String getDrawer() {
		return drawer;
	}
	public void setDrawer(String drawer) {
		this.drawer = drawer;
	}
	public String getLoadingMember() {
		return loadingMember;
	}
	public void setLoadingMember(String loadingMember) {
		this.loadingMember = loadingMember;
	}
	public double getWeight() {
		return weight;
	}
	public void setWeight(double weight) {
		this.weight = weight;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
}

package com.jczcb.bean;
import java.sql.Timestamp;

/**
 * OverloadCase entity. @author MyEclipse Persistence Tools
 */

public class OverloadCase implements java.io.Serializable {

	// Fields

	private Integer id;
	private String addRole;
	private String delRole;
	private Integer caseType;
	private Integer status;
	private String other;
	private Timestamp date;
	private String driverNumber;
	private String carNumber;
	private Double quantity;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getAddRole() {
		return addRole;
	}
	public void setAddRole(String addRole) {
		this.addRole = addRole;
	}
	public String getDelRole() {
		return delRole;
	}
	public void setDelRole(String delRole) {
		this.delRole = delRole;
	}
	public Integer getCaseType() {
		return caseType;
	}
	public void setCaseType(Integer caseType) {
		this.caseType = caseType;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getDriverNumber() {
		return driverNumber;
	}
	public void setDriverNumber(String driverNumber) {
		this.driverNumber = driverNumber;
	}
	public String getCarNumber() {
		return carNumber;
	}
	public void setCarNumber(String carNumber) {
		this.carNumber = carNumber;
	}
	public Double getQuantity() {
		return quantity;
	}
	public void setQuantity(Double quantity) {
		this.quantity = quantity;
	}
	
}
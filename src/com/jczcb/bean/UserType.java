package com.jczcb.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * UserType entity. @author MyEclipse Persistence Tools
 */

public class UserType implements java.io.Serializable {

	// Fields

	private Integer typeId;
	private String typeName;
	private String typeRemark;
	private Set userRoles = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserType() {
	}

	/** minimal constructor */
	public UserType(String typeName) {
		this.typeName = typeName;
	}

	/** full constructor */
	public UserType(String typeName, String typeRemark, Set userRoles) {
		this.typeName = typeName;
		this.typeRemark = typeRemark;
		this.userRoles = userRoles;
	}

	// Property accessors

	public Integer getTypeId() {
		return this.typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getTypeRemark() {
		return this.typeRemark;
	}

	public void setTypeRemark(String typeRemark) {
		this.typeRemark = typeRemark;
	}

	public Set getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(Set userRoles) {
		this.userRoles = userRoles;
	}

}
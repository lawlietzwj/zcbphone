package com.jczcb.bean;


/**
 * UserRole entity. @author MyEclipse Persistence Tools
 */

public class UserRole implements java.io.Serializable {

	// Fields

	private Integer roleId;
	private UserType userType;
	private String roleName;
	private String rolePwd;
	private String roleEmail;
	private String rolePhone;
	private Integer roleEnable;
	private Integer roleOnline;
	private Integer roleResourcetype;
	private Integer roleResource;
	private String roleDesc;
	private String roleRemark;


	// Constructors

	/** default constructor */
	public UserRole() {
	}

	/** minimal constructor */
	public UserRole(UserType userType, String roleName, String roleEmail,
			Integer roleEnable, Integer roleResourcetype, Integer roleResource) {
		this.userType = userType;
		this.roleName = roleName;
		this.roleEmail = roleEmail;
		this.roleEnable = roleEnable;
		this.roleResourcetype = roleResourcetype;
		this.roleResource = roleResource;
	}

	/** full constructor */

	public UserRole(UserType userType, String roleName, String rolePwd,
			String roleEmail, String rolePhone, Integer roleEnable,
			Integer roleOnline, Integer roleResourcetype, Integer roleResource,
			String roleDesc, String roleRemark) {
		this.userType = userType;
		this.roleName = roleName;
		this.rolePwd = rolePwd;
		this.roleEmail = roleEmail;
		this.rolePhone = rolePhone;
		this.roleEnable = roleEnable;
		this.roleOnline = roleOnline;
		this.roleResourcetype = roleResourcetype;
		this.roleResource = roleResource;
		this.roleDesc = roleDesc;
		this.roleRemark = roleRemark;
	}



	public Integer getRoleId() {
		return this.roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public UserType getUserType() {
		return this.userType;
	}

	public void setUserType(UserType userType) {
		this.userType = userType;
	}

	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRolePwd() {
		return this.rolePwd;
	}

	public void setRolePwd(String rolePwd) {
		this.rolePwd = rolePwd;
	}

	public String getRoleEmail() {
		return this.roleEmail;
	}

	public void setRoleEmail(String roleEmail) {
		this.roleEmail = roleEmail;
	}

	public String getRolePhone() {
		return this.rolePhone;
	}

	public void setRolePhone(String rolePhone) {
		this.rolePhone = rolePhone;
	}

	public Integer getRoleEnable() {
		return this.roleEnable;
	}

	public void setRoleEnable(Integer roleEnable) {
		this.roleEnable = roleEnable;
	}

	public Integer getRoleOnline() {
		return this.roleOnline;
	}

	public void setRoleOnline(Integer roleOnline) {
		this.roleOnline = roleOnline;
	}

	public Integer getRoleResourcetype() {
		return this.roleResourcetype;
	}

	public void setRoleResourcetype(Integer roleResourcetype) {
		this.roleResourcetype = roleResourcetype;
	}

	public Integer getRoleResource() {
		return this.roleResource;
	}

	public void setRoleResource(Integer roleResource) {
		this.roleResource = roleResource;
	}

	public String getRoleDesc() {
		return this.roleDesc;
	}

	public void setRoleDesc(String roleDesc) {
		this.roleDesc = roleDesc;
	}

	public String getRoleRemark() {
		return this.roleRemark;
	}

	public void setRoleRemark(String roleRemark) {
		this.roleRemark = roleRemark;
	}

}
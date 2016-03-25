package com.github.elizabetht.model;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("session")
public class User extends BaseEntity{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String user;
	private String password;
	private String email;
	private String mobile;
	private Integer subjectId;
	private String uuid;
	private String owner;
	private Integer level;
	private String wechat;
	private String companyName;
	private String contactName;
	private String role;
	private Integer ext;
	private String sourceCode;
	private String licenseType;
	private String license;
	private long licenseExpiredTime;
	private String userParentGroupId;
	
	
	
	private Integer idCode;
	private String qq;
	public String getSourceCode() {
		return sourceCode;
	}
	public void setSourceCode(String sourceCode) {
		this.sourceCode = sourceCode;
	}
	public Integer getExt() {
		return ext;
	}
	public void setExt(Integer ext) {
		this.ext = ext;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public User(){}
	public User(String contactName,String user,String password,String email,String mobile, Integer subjectId,String uuid,String owner,Integer level){
		this.contactName=contactName;
		this.user=user;
		this.password=password;
		this.email=email;
		this.mobile=mobile;
		this.subjectId=subjectId;
		this.uuid=uuid;
		this.owner=owner;
		this.level=level;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Integer getSubjectId() {
		return subjectId;
	}
	public void setSubjectId(Integer subjectId) {
		this.subjectId = subjectId;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public Integer getLevel() {
		return level;
	}
	public void setLevel(Integer level) {
		this.level = level;
	}
	public String getWechat() {
		return wechat;
	}
	public void setWechat(String wechat) {
		this.wechat = wechat;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getLicenseType() {
		return licenseType;
	}
	public void setLicenseType(String licenseType) {
		this.licenseType = licenseType;
	}
	public String getLicense() {
		return license;
	}
	public void setLicense(String license) {
		this.license = license;
	}
	public long getLicenseExpiredTime() {
		return licenseExpiredTime;
	}
	public void setLicenseExpiredTime(long licenseExpiredTime) {
		this.licenseExpiredTime = licenseExpiredTime;
	}
	public Integer getIdCode() {
		return idCode;
	}
	public void setIdCode(Integer idCode) {
		this.idCode = idCode;
	}
	
	public String getUserParentGroupId() {
		return userParentGroupId;
	}
	public void setUserParentGroupId(String userParentGroupId) {
		this.userParentGroupId = userParentGroupId;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	
}

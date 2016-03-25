package com.github.elizabetht.model;

public class Quotas extends BaseEntity{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String user;//USERNAME
	private String subuser;//USER
	private String resource;
	private String description;
	private int limit;//QUOTAS_LIMIT
	private int used;
	public Quotas(){
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getSubuser() {
		return subuser;
	}
	public void setSubuser(String subuser) {
		this.subuser = subuser;
	}
	public String getResource() {
		return resource;
	}
	public void setResource(String resource) {
		this.resource = resource;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getLimit() {
		return limit;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getUsed() {
		return used;
	}
	public void setUsed(int used) {
		this.used = used;
	}
}

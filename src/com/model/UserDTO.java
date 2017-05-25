package com.model;

public class UserDTO {
	private int userid;
	private String username;
	private String email;
	private String password;
	private String registerdate;
	private int auth;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getRegisterdate() {
		return registerdate;
	}
	public void setRegisterdate(String registerdate) {
		this.registerdate = registerdate;
	}
	public int getAuth() {
		return auth; 
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	
	
	
}

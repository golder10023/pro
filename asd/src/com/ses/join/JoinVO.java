package com.ses.join;

public class JoinVO {
	private String email;
	private String user_m;
	private String password;
	private String grade;
	private String yn;
	
	public JoinVO() {
		super();
	}
	public JoinVO(String email, String user_m, String password, String grade, String yn) {
		super();
		this.email = email;
		this.user_m = user_m;
		this.password = password;
		this.grade = grade;
		this.yn = yn;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUser_m() {
		return user_m;
	}
	public void setUser_m(String user_m) {
		this.user_m = user_m;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getYn() {
		return yn;
	}
	public void setYn(String yn) {
		this.yn = yn;
	}
	@Override
	public String toString() {
		return "joinVO [email=" + email + ", user_m=" + user_m + ", password=" + password + ", grade=" + grade + ", yn="
				+ yn + "]";
	}
	
	
	
}

package com.ses.videochat;

public class VideochatVO {
	private String user_m;
	private String serial;
	private String yn;
	
	public VideochatVO() {
		super();
	}
	public VideochatVO(String user_m, String serial, String yn) {
		super();
		this.user_m = user_m;
		this.serial = serial;
		this.yn = yn;
	}
	public String getUser_m() {
		return user_m;
	}
	public void setUser_m(String user_m) {
		this.user_m = user_m;
	}
	public String getSerial() {
		return serial;
	}
	public void setSerial(String serial) {
		this.serial = serial;
	}
	public String getYn() {
		return yn;
	}
	public void setYn(String yn) {
		this.yn = yn;
	}
	@Override
	public String toString() {
		return "VideochatVO [user_m=" + user_m + ", serial=" + serial + ", yn=" + yn + "]";
	}
	
	
}

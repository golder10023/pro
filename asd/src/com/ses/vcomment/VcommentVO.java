package com.ses.vcomment;

import java.util.Date;

public class VcommentVO {
	
	private int vcommentnum;
	private String user_m;
	private int videonum;
	private String vcomment;
	private Date vdate;
	
	
	public VcommentVO() {
		super();
	}
	public VcommentVO(int vcommentnum, String user_m, int videonum, String vcomment, Date vdate) {
		super();
		this.vcommentnum = vcommentnum;
		this.user_m = user_m;
		this.videonum = videonum;
		this.vcomment = vcomment;
		this.vdate = vdate;
	}
	public int getVcommentnum() {
		return vcommentnum;
	}
	public void setVcommentnum(int vcommentnum) {
		this.vcommentnum = vcommentnum;
	}
	public String getUser_m() {
		return user_m;
	}
	public void setUser_m(String user_m) {
		this.user_m = user_m;
	}
	public int getVideonum() {
		return videonum;
	}
	public void setVideonum(int videonum) {
		this.videonum = videonum;
	}
	public String getVcomment() {
		return vcomment;
	}
	public void setVcomment(String vcomment) {
		this.vcomment = vcomment;
	}
	public Date getVdate() {
		return vdate;
	}
	public void setVdate(Date vdate) {
		this.vdate = vdate;
	}
	@Override
	public String toString() {
		return "VcommentVO [vcommentnum=" + vcommentnum + ", user_m=" + user_m + ", videonum=" + videonum
				+ ", vcomment=" + vcomment + ", vdate=" + vdate + "]";
	}
	
	

}

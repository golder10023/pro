package com.ses.bcomment;

import java.util.Date;

public class BcommentVO {
	private int bcommentnum;
	private String user_m;
	private int boardnum;
	private String bcomment;
	private Date bdate;
	
	
	public BcommentVO() {
		super();
	}
	public BcommentVO(int bcommentnum, String user_m, int boardnum, String bcomment, Date bdate) {
		super();
		this.bcommentnum = bcommentnum;
		this.user_m = user_m;
		this.boardnum = boardnum;
		this.bcomment = bcomment;
		this.bdate = bdate;
	}
	public int getBcommentnum() {
		return bcommentnum;
	}
	public void setBcommentnum(int bcommentnum) {
		this.bcommentnum = bcommentnum;
	}
	public String getUser_m() {
		return user_m;
	}
	public void setUser_m(String user_m) {
		this.user_m = user_m;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getBcomment() {
		return bcomment;
	}
	public void setBcomment(String bcomment) {
		this.bcomment = bcomment;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	@Override
	public String toString() {
		return "BcommentVO [bcommentnum=" + bcommentnum + ", user_m=" + user_m + ", boardnum=" + boardnum
				+ ", bcomment=" + bcomment + ", bdate=" + bdate + "]";
	}
	
	
	
	
}

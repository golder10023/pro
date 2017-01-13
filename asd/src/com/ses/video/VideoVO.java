package com.ses.video;

import java.util.Date;

public class VideoVO {

	private int videonum;
	private String user_m;
	private String vfront;
	private String vtitle;
	private Date vdate;
	private String vcontent;
	private int vhit;
	private String vlink;
	private String vimg;
	private int vlike;

	public VideoVO() {	}

	public VideoVO(String vfront, String vimg, String user_m, String vtitle, String vlink, String vcontent) {
		this.vfront = vfront;
		this.vimg = vimg;
		this.user_m = user_m;
		this.vtitle = vtitle;
		this.vlink = vlink;
		this.vcontent = vcontent;
	}

	public VideoVO(int videonum, String user_m, String vfront, String vtitle, Date vdate, String vcontent, int vhit,
			String vlink, String vimg, int vlike) {
		this.videonum = videonum;
		this.user_m = user_m;
		this.vfront = vfront;
		this.vtitle = vtitle;
		this.vdate = vdate;
		this.vcontent = vcontent;
		this.vhit = vhit;
		this.vlink = vlink;
		this.vimg = vimg;
		this.vlike = vlike;
	}

	public int getVideonum() {
		return videonum;
	}

	public void setVideonum(int videonum) {
		this.videonum = videonum;
	}

	public String getUser_m() {
		return user_m;
	}

	public void setUser_m(String user_m) {
		this.user_m = user_m;
	}

	public String getVfront() {
		return vfront;
	}

	public void setVfront(String vfront) {
		this.vfront = vfront;
	}

	public String getVtitle() {
		return vtitle;
	}

	public void setVtitle(String vtitle) {
		this.vtitle = vtitle;
	}

	public Date getVdate() {
		return vdate;
	}

	public void setVdate(Date vdate) {
		this.vdate = vdate;
	}

	public String getVcontent() {
		return vcontent;
	}

	public void setVcontent(String vcontent) {
		this.vcontent = vcontent;
	}

	public int getVhit() {
		return vhit;
	}

	public void setVhit(int vhit) {
		this.vhit = vhit;
	}

	public String getVlink() {
		return vlink;
	}

	public void setVlink(String vlink) {
		this.vlink = vlink;
	}

	public String getVimg() {
		return vimg;
	}

	public void setVimg(String vimg) {
		this.vimg = vimg;
	}

	public int getVlike() {
		return vlike;
	}

	public void setVlike(int vlike) {
		this.vlike = vlike;
	}

	@Override
	public String toString() {
		return "VideoVO [videonum=" + videonum + ", user_m=" + user_m + ", vfront=" + vfront + ", vtitle=" + vtitle
				+ ", vdate=" + vdate + ", vcontent=" + vcontent + ", vhit=" + vhit + ", vlink=" + vlink + ", vimg="
				+ vimg + ", vlike=" + vlike + "]";
	}

}
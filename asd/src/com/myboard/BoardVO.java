package com.myboard;

import java.util.Date;

public class BoardVO{

	private int boardnum;			//커뮤니티 게시판 넘버
	private String user_m;			//사용자, 이용자, 작성자로 사용됨
	private String password;
	private String bfront;			//글머리
	private String btitle;			//글제목
	private String bcontent;		//글 내용
	private String bfile;			//파일(경로) ex.사진
	private Date bdate;				//작성일
	private int bhit;				//조회수
	private int blike;				//좋아요 ajax사용
	
	
	
	public BoardVO() {
		super();
	}
	public BoardVO(int boardnum, String user_m, String password, String bfront, String btitle, String bcontent,
			String bfile, Date bdate, int bhit, int blike) {
		super();
		this.boardnum = boardnum;
		this.user_m = user_m;
		this.password = password;
		this.bfront = bfront;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bfile = bfile;
		this.bdate = bdate;
		this.bhit = bhit;
		this.blike = blike;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
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
	public String getBfront() {
		return bfront;
	}
	public void setBfront(String bfront) {
		this.bfront = bfront;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public int getBhit() {
		return bhit;
	}
	public void setBhit(int bhit) {
		this.bhit = bhit;
	}
	public int getBlike() {
		return blike;
	}
	public void setBlike(int blike) {
		this.blike = blike;
	}
	@Override
	public String toString() {
		return "BoardVO [boardnum=" + boardnum + ", user_m=" + user_m + ", password=" + password + ", bfront=" + bfront
				+ ", btitle=" + btitle + ", bcontent=" + bcontent + ", bfile=" + bfile + ", bdate=" + bdate + ", bhit="
				+ bhit + ", blike=" + blike + "]";
	}
	
	

	
}

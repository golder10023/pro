package com.ses.vcomment;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class VcommentAction extends ActionSupport implements ModelDriven<VcommentVO>, Preparable{
	private VcommentVO vcommentVO;
	private VcommentService service;
	private List<VcommentVO> rclist;
	private int videodnum;
	Date date = new Date();
	
	public String vreply(){
		service.vreply(vcommentVO);
		vcommentVO = new VcommentVO();
		return SUCCESS;
		
	}

	@Override
	public void prepare() throws Exception {
		service = new VcommentService();
		vcommentVO = new VcommentVO();
		
	}

	@Override
	public VcommentVO getModel() {
		return vcommentVO;
	}

	public VcommentVO getVcommentVO() {
		return vcommentVO;
	}

	public void setVcommentVO(VcommentVO vcommentVO) {
		this.vcommentVO = vcommentVO;
	}

	public List<VcommentVO> getRclist() {
		return rclist;
	}

	public void setRclist(List<VcommentVO> rclist) {
		this.rclist = rclist;
	}

	public int getVideodnum() {
		return videodnum;
	}

	public void setVideodnum(int videodnum) {
		this.videodnum = videodnum;
	}


	
}

package com.ses.videochat;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;
import com.ses.video.VideoService;
import com.ses.video.VideoVO;

public class VideochateAjaxAction extends ActionSupport implements Preparable {
	private VideochatVO videochatVO;
	private List<VideochatVO> rost;
	private VideochatService service;
	private String user_m;
	private String serial;
	
	
	

	public String checkon(){
		videochatVO.setSerial(serial);
		videochatVO.setUser_m(user_m);
		service.checkon(videochatVO);
		return SUCCESS;
	}
	
	public String rost(){
		rost = service.rost();
		System.out.println(rost);
		return SUCCESS;
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
	public VideochatVO getVideochatVO() {
		return videochatVO;
	}

	public void setVideochatVO(VideochatVO videochatVO) {
		this.videochatVO = videochatVO;
	}



	public List<VideochatVO> getRost() {
		return rost;
	}

	public void setRost(List<VideochatVO> rost) {
		this.rost = rost;
	}

	@Override
	public void prepare() throws Exception {
		videochatVO = new VideochatVO();
		service = new VideochatService();
		
	}
	
}

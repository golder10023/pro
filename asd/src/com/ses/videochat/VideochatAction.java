package com.ses.videochat;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class VideochatAction extends ActionSupport implements ModelDriven<VideochatVO>, Preparable {

	private VideochatVO videochatVO;
	private VideochatService service;
	
	//1:1영상채팅 입장
	public String enter(){
		System.out.println(videochatVO);
		boolean result=service.enter(videochatVO);
		System.out.println(result);
		if(result){
			return SUCCESS;
		}
		return ERROR;
	}
	

	public VideochatVO getVideochatVO() {
		return videochatVO;
	}

	public void setVideochatVO(VideochatVO videochatVO) {
		this.videochatVO = videochatVO;
	}

	@Override
	public void prepare() throws Exception {
		
		service = new VideochatService();
		videochatVO = new VideochatVO();
	}

	@Override
	public VideochatVO getModel() {
		return videochatVO;
	}
	
}
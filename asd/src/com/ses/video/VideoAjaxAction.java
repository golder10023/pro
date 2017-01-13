package com.ses.video;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class VideoAjaxAction extends ActionSupport implements Preparable {
	private int videonum;
	private VideoVO videoVO;
	private VideoService service;
	
	public int getVideonum() {
		return videonum;
	}

	public void setVideonum(int videonum) {
		this.videonum = videonum;
	}

	public VideoVO getVideoVO() {
		return videoVO;
	}

	public void setVideoVO(VideoVO videoVO) {
		this.videoVO = videoVO;
	}

	public String vlike() {
		videoVO.setVideonum(videonum);
		
		videoVO = service.vlike(videoVO);
	
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		videoVO = new VideoVO();
		service = new VideoService();
	}
}

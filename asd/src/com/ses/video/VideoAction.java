package com.ses.video;



import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.ses.vcomment.VcommentVO;

public class VideoAction extends ActionSupport implements ModelDriven<VideoVO>, Preparable {

	private VideoVO videoVO;
	private List<VideoVO> vlist;
	private List<VideoVO> vvlist;
	private List<VcommentVO> vclist;
	private VideoService service;
	private VcommentVO vcommentVO;

	public String vlist() {
		vlist = service.vlist();
		vvlist = service.top3();
		return SUCCESS;
	}
	public String vvlist(){
		
		return SUCCESS;
	}
	
	public String vread() {
		videoVO = service.vread(videoVO);
		vclist=service.vcomment(videoVO);
		
		return SUCCESS;
	}
	
	
	public List<VcommentVO> getVclist() {
		return vclist;
	}

	public void setVclist(List<VcommentVO> vclist) {
		this.vclist = vclist;
	}

	public String vdelete() {
		service.vdelete(videoVO);
		return SUCCESS;
	}
	
	
	@Override
	public void prepare() throws Exception {
		service = new VideoService();
		videoVO = new VideoVO();
		vcommentVO = new VcommentVO();
	}
	
	@Override
	public VideoVO getModel() {
		return videoVO;
	}
	
	
	public VideoVO getVideoVO() {
		return videoVO;
	}

	public void setVideoVO(VideoVO videoVO) {
		this.videoVO = videoVO;
	}


	public List<VideoVO> getVlist() {
		return vlist;
	}


	public void setVlist(List<VideoVO> vlist) {
		this.vlist = vlist;
	}

	public VcommentVO getVcommentVO() {
		return vcommentVO;
	}

	public void setVcommentVO(VcommentVO vcommentVO) {
		this.vcommentVO = vcommentVO;
	}

	public List<VideoVO> getVvlist() {
		return vvlist;
	}

	public void setVvlist(List<VideoVO> vvlist) {
		this.vvlist = vvlist;
	}
	
	
}

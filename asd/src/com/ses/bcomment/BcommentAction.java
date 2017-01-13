package com.ses.bcomment;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class BcommentAction extends ActionSupport implements ModelDriven<BcommentVO>, Preparable {
	private BcommentVO bcommentVO;
	private BcommentService service;
	private List<BcommentVO> relist;
	private int boardnum;
	Date date = new Date();

	// 게시글 댓글달기
	public String reply() {
		service.reply(bcommentVO);
		bcommentVO = new BcommentVO();
		return SUCCESS;
	}

	public BcommentVO getBcommentVO() {
		return bcommentVO;
	}

	public void setBcommentVO(BcommentVO bcommentVO) {
		this.bcommentVO = bcommentVO;
	}

	@Override
	public void prepare() throws Exception {
		service  = new BcommentService();
		bcommentVO = new BcommentVO();
	}

	@Override
	public BcommentVO getModel() {
		return bcommentVO;
	}

	public List<BcommentVO> getRelist() {
		return relist;
	}

	public void setRelist(List<BcommentVO> relist) {
		this.relist = relist;
	}

}

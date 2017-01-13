package com.myboard;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class BoardAjaxAction extends ActionSupport implements Preparable  {

	private int boardnum;
	private BoardService service;
	private BoardVO boardVO;
	
	public String blike(){
		boardVO.setBoardnum(boardnum);
		boardVO = service.blike(boardVO);
		return SUCCESS;
	}
	
	
	@Override
	public void prepare() throws Exception {
		boardVO = new BoardVO();
		service = new BoardService();
	}

	public int getBoardnum() {
		return boardnum;
	}

	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}

	public BoardVO getBoardVO() {
		return boardVO;
	}

	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
	}
	
	

}

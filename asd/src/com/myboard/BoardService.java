package com.myboard;

import java.util.List;

import com.ses.bcomment.BcommentVO;

public class BoardService {
	BoardDAO boardDAO = new BoardDAO();
	
	// 리스트 출력
	public List<BoardVO> list() {
		return boardDAO.list();
	}
	
	// 글쓰기
	public void write(BoardVO boardVO) {
		boardDAO.write(boardVO);
	}
	
	// 글 읽기
	public BoardVO read(BoardVO boardVO) {
		int boardnum = boardVO.getBoardnum();
		return boardDAO.read(boardnum);
	}
	
	// 글 삭제
	public boolean delete(BoardVO boardVO) {
		int boardNum = boardVO.getBoardnum();
		String password = boardVO.getPassword();
		return boardDAO.delete(boardNum, password);
	}
	
	// 글 수정
	public boolean modify(BoardVO boardVO) {
		return boardDAO.modify(boardVO);
	}
	// 댓글
	public List<BcommentVO> bcomment(BoardVO boardVO){
		return boardDAO.comment(boardVO);
	}
	

	public BoardVO blike(BoardVO boardVO) {
		int boardnum = boardVO.getBoardnum();
		boardDAO.blike(boardnum);
		
		return boardDAO.read(boardnum);
	}

}

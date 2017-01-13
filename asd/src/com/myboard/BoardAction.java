package com.myboard;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;
import com.ses.bcomment.BcommentVO;

public class BoardAction extends ActionSupport implements ModelDriven<BoardVO>, Preparable {
	private BoardVO boardVO;
	private BoardDAO boardDAO;
	private List<BoardVO> list;
	private List<BcommentVO> blist;
	private boolean result;
	private BoardService service;
	PageNavigator pagenavi;
	int currentPage; // 현재 페이지 (최근 글이 1부터 시작)
	String searchField;
	String searchText;
	Map<String, Object> session;
	int boardno;
	String bcomment;
	int boardnum;
	private BcommentVO bcommentVO;
	
	
	
	//글쓰기
	public String write() {
		service.write(boardVO);
		return SUCCESS;
	}
	//게시글 읽기
	public String read() {
		boardVO = service.read(boardVO);
		blist=service.bcomment(boardVO);
		return SUCCESS;
	}
	//게시글 삭제
	public String delete() {
		result = service.delete(boardVO);
		return SUCCESS;
	}
	//게시글 삭제
	public String modify() {
		result = service.modify(boardVO);
		return SUCCESS;
	}
	
	//게시글 리스트 띄우기
	public String listBoard(){
		int countPerPage= Integer.parseInt(getText("boardVO.countperpage"));
		int pagePerGroup = Integer.parseInt(getText("boardVO.pagepergroup"));
		
		System.out.println("currentPage :" + currentPage);
		System.out.println();
		if (currentPage <= 0) {
			currentPage = 1;
		}
		
		System.out.println("searchField :" + searchField);
		System.out.println("searchText :" + searchText);
		System.out.println("currentPage :" + currentPage);
		int totalboard = getDao().getTotal(searchField, searchText);
		System.out.println(totalboard+"==totalboard");
		//페이징을 위한 pageNavigator 객체를 생성
		pagenavi = new PageNavigator(countPerPage, pagePerGroup, currentPage, totalboard);			
		// 페이지 네비게이터를 통해 현재 요청받은 전체페이지의 시작페이지와 끝 페이지를 파라미터로 입력
		// 검색조건(searchField, searchText)은 게시글 검색을 위한 파라미터
		// 출력하고자 하는 페이지는 실제 db상에서는 전체페이지 - 요청받은 페이지 번호
		
		list = getDao().listBoard(searchField, searchText, pagenavi.getStartRecord(), countPerPage);
		
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		service = new BoardService();
		boardVO = new BoardVO();
		bcommentVO = new BcommentVO();
	}

	@Override
	public BoardVO getModel() {
		return boardVO;
	}

	public BoardVO getBoardVO() {
		return boardVO;
	}

	public void setBoardVO(BoardVO boardVO) {
		this.boardVO = boardVO;
	}

	public List<BoardVO> getList() {
		return list;
	}

	public void setList(ArrayList<BoardVO> list) {
		this.list = list;
	}

	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}

	public PageNavigator getPagenavi() {
		return pagenavi;
	}

	public void setPagenavi(PageNavigator pagenavi) {
		this.pagenavi = pagenavi;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public String getSearchField() {
		return searchField;
	}

	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardsno) {
		this.boardno = boardno;
	}
	public BoardDAO getDao(){
		return new BoardDAO();
	}
	public String getBcomment() {
		return bcomment;
	}
	public void setBcomment(String bcomment) {
		this.bcomment = bcomment;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public BcommentVO getBcommentVO() {
		return bcommentVO;
	}
	public void setBcommentVO(BcommentVO bcommentVO) {
		this.bcommentVO = bcommentVO;
	}
	public List<BcommentVO> getBlist() {
		return blist;
	}
	public void setBlist(List<BcommentVO> blist) {
		this.blist = blist;
	}
}
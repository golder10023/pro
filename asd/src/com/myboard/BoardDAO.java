package com.myboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.ses.bcomment.BcommentVO;


public class BoardDAO {
	
	
	// 리스트 출력
	public List<BoardVO> list() {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		List<BoardVO> list = sqlSession.selectList("list");
		sqlSession.close();
		return list;
	}
	
	// 글쓰기
	public void write(BoardVO vo) {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		try{
			sqlSession.insert("write", vo);
			sqlSession.commit();
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
	}
	
	// 글 읽기
	public BoardVO read(int boardnum) {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		BoardVO boardVO = sqlSession.selectOne("read", boardnum);
		increaseHit(boardnum);
		//List<BcommentVO>bbcomment = sqlSession.selectList("bbcomment",boardnum);
		return boardVO;
	}
	
	// 글 삭제
	public boolean delete(int boardnum, String password) {
		boolean result = true;
		int no;
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		
		HashMap<String, Object> map = new HashMap<>();
		map.put("boardnum", boardnum);
		map.put("password", password);
		try{
			no=sqlSession.delete("delete", map);
			if(no==0){
				result=false;
			} else{
				sqlSession.commit();
			}
		}catch(Exception e){
			e.printStackTrace();
			sqlSession.rollback();
			result = false;
		}finally{
			sqlSession.close();
		}
		
		return result;
	}
	
	// 조회수 증가
	public void increaseHit(int boardnum) {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		int no;
		try{
			no=sqlSession.update("increaseHit", boardnum);
			if(no==0){
				System.out.println("조회수 실패");
				return;
			}else{
				System.out.println("조회수 증가");
				sqlSession.commit();
			}
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally{
			sqlSession.close();
		}
	}
	
	// 글 수정
	public boolean modify(BoardVO boardVO) {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		boolean result = true;
		int no;
		try{
			no=sqlSession.update("modify", boardVO);
			if(no==0){
				result=false;
			} else{
				sqlSession.commit();
				result = true;
			}
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			result = false;
		}finally{
			sqlSession.close();
		}
		
		return result;
	}
	
	
	// 페이징 번호
	public List<BoardVO> listBoard(String searchField, String searchText, int startRecord, int countPerPage) {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchField", searchField);
		map.put("searchText", searchText);
/*		map.put("startpage", startpage);
		map.put("endpage", endpage);*/
		
		// 페이징 처리시 필요한 클래스 ( 요청하는 페이지의 첫글의 rownum번호와 페이지당 출력글 갯수를 파라미터로 갖는다)
		// mapper의 sql문에서 between 조건이 필요없게된다.
		RowBounds bound = new RowBounds(startRecord, countPerPage);
		
		List<BoardVO> List = sqlSession.selectList("boardList", map, bound);
		sqlSession.close();
		return List;
	}
	// 페이징 검색
	public int getTotal(String searchField, String searchText) {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		int result=0;
		System.out.println(searchField+"=searchField");
		System.out.println(searchText+"=searchText");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchField", searchField);
		map.put("searchText", searchText);
		try{
		result = sqlSession.selectOne("getTotalBoardList", map);
		System.out.println(result+"=result");
		} catch(Exception e){
			sqlSession.close();
		}
		return result;
	}

	public void blike(int boardnum) {
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		try{
			sqlSession.update("blike", boardnum);
			sqlSession.commit();
		} catch (Exception e){
			e.printStackTrace();
			sqlSession.rollback();
		}
	}
	public List<BcommentVO> comment(BoardVO boardVO){
		SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		List<BcommentVO> blist = null;
		try{
			blist=sqlSession.selectList("bcomment",boardVO.getBoardnum());
		} catch(Exception e){
			e.printStackTrace();
		} 
		
		return blist;
		
	}
}

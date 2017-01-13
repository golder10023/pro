package com.ses.videochat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

public class VideochatDAO {
	SqlSession sqlsession = CreateSqlSession.getSqlSessionFactory().openSession();
	VideochatVO newVO=null;
	public boolean enter(VideochatVO videochatVO) {
		boolean result = false;
		System.out.println("들어온 아이디값=="+videochatVO);
		int no;
		try {
			newVO = sqlsession.selectOne("recordList",videochatVO.getUser_m());
			System.out.println("newVO===="+newVO);
			
			if(newVO == null){
				no = sqlsession.insert("enter", videochatVO.getUser_m());
				if (no == 0) {
					System.out.println("등록실패");
					
					result = false;
				} else {
					sqlsession.commit();
					result = true;
				}
			} else {
				System.out.println("들어왔던 기록이 있습니다.");
				no=sqlsession.update("recordUpdate",videochatVO);
				if(no == 0){
					result = false;
					System.out.println("수정실패");
				} else {
					System.out.println("수정함");
					result = true;
			
				}
			
			}
				
		} catch (Exception e) {
			e.printStackTrace();
			sqlsession.rollback();
		} finally {
			sqlsession.close();
		}
		return result;
	}

	public boolean checkon(VideochatVO videochatVO) {
		System.out.println("입력=="+videochatVO);
		boolean result = false;
		int no;
		try {
			Map<String, Object>map = new HashMap<>();
			map.put("user_m", videochatVO.getUser_m());
			map.put("serial", videochatVO.getSerial());
			System.out.println("map-==="+map);
			no = sqlsession.update("checkon", map);
			if (no == 0) {
				System.out.println("체크 실패");
				sqlsession.rollback();
				result = false;
			} else {
				sqlsession.commit();
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			sqlsession.rollback();
		}
		return result;
	}

	public List<VideochatVO> rost() {
		List<VideochatVO> result = null;
		try {
			result = sqlsession.selectList("rost");
			System.out.println("rost=--" + result);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		return result;

	}

	public boolean checkit(VideochatVO videochatVO) {
		boolean result = false;
		try {
				System.out.println("대체");
				result = sqlsession.selectOne("checkit", videochatVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}
}

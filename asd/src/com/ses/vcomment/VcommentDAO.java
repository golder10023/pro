package com.ses.vcomment;

import org.apache.ibatis.session.SqlSession;

public class VcommentDAO {
	
	private SqlSession sqlsession;

	public void vreply(VcommentVO vcommentVO) {
		sqlsession = CreateSqlSession.getSqlSessionFactory().openSession();
		int no;
		try{
			no = sqlsession.insert("vreply", vcommentVO);
			if(no == 0){
				System.out.println("등록실패");
				return;
			} else {
				System.out.println("등록성공");
				sqlsession.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
			sqlsession.rollback();
		} finally {
			sqlsession.close();
		}
	}
		
	public VcommentVO vclist(VcommentVO vcommentVO) {
		VcommentVO vo = null;
		sqlsession = CreateSqlSession.getSqlSessionFactory().openSession();
		try {
			vo = sqlsession.selectOne("vclist");
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		
		return null;
	}

}

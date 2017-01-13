package com.ses.bcomment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


public class BcommentDAO {

	private SqlSession sqlsession;
	
	public void reply(BcommentVO bcommentVO) {
		sqlsession = CreateSqlSession.getSqlSessionFactory().openSession();
		int no;
		try{
			no=sqlsession.insert("reply", bcommentVO);
			if(no == 0){
				System.out.println("등록실패");
				return;
			} else{
				
			System.out.println("등록성공");
			sqlsession.commit();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			sqlsession.rollback();
		} finally{
			sqlsession.close();
		}
	}
	
	public BcommentVO relist(BcommentVO bcommentVO){
		BcommentVO relist = null;
		sqlsession = CreateSqlSession.getSqlSessionFactory().openSession();
		try{
			relist = sqlsession.selectOne("relist"); 
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		return relist;
	}
	
}

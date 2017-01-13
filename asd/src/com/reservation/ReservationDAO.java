package com.reservation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;


public class ReservationDAO {
	private SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
	
	public void reservationWrite(ReservationVO reservationVO) {
		System.out.println("reservaion 다오!");
		try {
			sqlSession.insert("reservationWrite",reservationVO);
			System.out.println("들어감!!");
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}finally {
			sqlSession.close();
		}
	}
	public List<ReservationVO> reservationList() {
		List<ReservationVO>reservationList = sqlSession.selectList("reservationList");
		sqlSession.close();
		return reservationList;
	}

	/*public void reservationWrite(ReservationVO reservationVO) {
		int insert;
		boolean result = false;
		try {
			insert = sqlSession.insert("reservationWrite",reservationVO);
			if(insert == 0){
				result = false;
			} else {
				sqlSession.commit();
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
			result = false;
		}
		finally {
			sqlSession.close();
		}
		
	}
	public List<ReservationVO> reservationList() {
		List<ReservationVO>reservationList = sqlSession.selectList("reservationList");
		sqlSession.close();
		return reservationList;
	}
	public ReservationVO reserved(ReservationVO reservationVO){
		ReservationVO result = null; 
		Map<String, Object>map = new HashMap<>();
		map.put("email", reservationVO.getEmail());
		map.put("reservationDate", reservationVO.getReservationDate());
		result=sqlSession.selectOne("select",map);
		System.out.println("dao=="+result);
		return result;
		
	}*/
}

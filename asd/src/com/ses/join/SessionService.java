package com.ses.join;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.opensymphony.xwork2.ActionContext;
import com.reservation.ReservationVO;

public class SessionService {
	public SessionDAO dao = new SessionDAO();
	
	public boolean join(JoinVO joinVO) {
		boolean isExistAlreadyEmail = dao.existAlreadyEmail(joinVO);
		System.out.println(isExistAlreadyEmail);
		if (isExistAlreadyEmail == true) {
			// 중복된 이메일이 있으면 false.
			return false;
		}

		// 중복된 이메일이 없다면 회원가입을 시킨다.
		dao.join(joinVO);

		return true;
	}

	public boolean join1(JoinVO joinVO) {
		boolean result = dao.join1(joinVO);
		if(result){
			result=true;
		}
		
		else result=false;
		return result;
	}

	public boolean authorizeUser(JoinVO joinVO) {
		boolean result = dao.authorizeUser(joinVO);
		if (result) {
			// 인증 성공되면 user정보를 가져온다. 그 후에 session 객체에 저장해서 웹브라우저가 켜져잇는동안 계속
			// memberVO정보를 유지함.
			// 여기서 password는 저장하면 안됨. 보안상 안좋음. 그래서 password는 저장하지말것.
			JoinVO authorizedMember = dao.getUser(joinVO);
			
			
			/*ActionContext context = ActionContext.getContext();  */
			Map<String, Object> session = getSession();
			String user_m=(String) session.put("user_m", authorizedMember.getUser_m());
			String email = (String) session.put("email", authorizedMember.getEmail());
			String grade = (String) session.put("grade", authorizedMember.getGrade());
			String password = (String) session.put("password", authorizedMember.getPassword());
			
			ReservationVO RVO = dao.getRes();
			String one = (String)session.put("one", RVO.getOne_hour());
			String two = (String)session.put("two", RVO.getTwo_hour());
			String three = (String)session.put("three", RVO.getThree_hour());
			String four = (String)session.put("four", RVO.getFour_hour());
			String five = (String)session.put("five", RVO.getFive_hour());
			String six = (String)session.put("six", RVO.getSix_hour());
			String seven = (String)session.put("seven", RVO.getSeven_hour());
			String eight = (String)session.put("eight", RVO.getEight_hour());
			String reservationDate = (String)session.put("expert", RVO.getReservationDate());
			String expet = (String)session.put("expert", RVO.getExpert());
			
			/*context.setSession(session);
			if(user_m != null){
				System.out.println("세션 발동!!!");
				
			}*/
			
			return true;
		}
		// 인증 실패.
		return false;
	}

	/**
	 * 로그아웃.
	 */
	public void logout() {
		Map<String, Object> session = getSession();
		session.clear();
	}

	/**
	 * 세션객체를 가져온당.
	 */
	private Map<String, Object> getSession() {
		ActionContext context = ActionContext.getContext();
		Map<String, Object> map = context.getSession();
		return map;
	}
	/**
	 * 화상채팅들어가기.
	 */
	public boolean video(JoinVO joinVO){
		boolean result = false;
		JoinVO aa = dao.video(joinVO);
		if(joinVO.getPassword().equals(aa.getPassword())){
			result = true;
		}
		return result;
		
	}

}

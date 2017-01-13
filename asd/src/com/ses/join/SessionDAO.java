package com.ses.join;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.reservation.ReservationVO;

public class SessionDAO {
	private SqlSession sqlSession;

	public void join(JoinVO joinVO) {
		int no=0;
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
			// 여기서 회원가입되면. 밑에 메일 보내는 함수를 실행함.
			//joinVO.setUser_m(UUID.randomUUID().toString());
			joinVO.setGrade("손님");
			no=sqlSession.insert("join", joinVO);
			sqlSession.commit();
			
			sendEmail(joinVO.getEmail(), "회원가입  진행중.",
					"진행해주세요." + "<a href=https://10.10.16.83:8443/asd/session/join2.action?email=" + joinVO.getEmail()
							+ ">" + "링크" + "</a>");
		}

		catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
	}

	public boolean join1(JoinVO joinVO) {
		boolean result = false;
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
			sqlSession.update("joinUpdate", joinVO);
			sqlSession.commit();
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}

		return result;
	}

	public boolean existAlreadyEmail(JoinVO joinVO) {
		boolean isExistAlreadyEmail = false;
		
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
			if (sqlSession.selectOne("existAlreadyEmail", joinVO) != null) {
				isExistAlreadyEmail = true;
			} else {
				isExistAlreadyEmail = false;
				
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return isExistAlreadyEmail;
	}

	public JoinVO findJoin(JoinVO joinVO) {
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
			joinVO = sqlSession.selectOne("find", joinVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return joinVO;

	}

	
	public JoinVO getUser(JoinVO joinVO) {
		JoinVO vo = null;
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
			vo = sqlSession.selectOne("session", joinVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return vo;
	}
	
	public ReservationVO getRes(){
		ReservationVO res = new ReservationVO();
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
			res = sqlSession.selectOne("res");
		} catch (Exception e) {
			//e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return res;
		
	}
	
	
	//리스트로 예약정보 받아오기
	/*public List<ReservationVO>getRes(JoinVO joinVO){
		List<ReservationVO>res=null;
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
			res= sqlSession.selectList("res",joinVO);
			System.out.println("===="+res);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return res;
	}*/

	/**
	 * 데이터베이스에서 유저가 잇는지 없는지 체크 한후 유저가 잇으면 true, 없으면 false.
	 */
	public boolean authorizeUser(JoinVO joinVO) {
		boolean result = false;
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();

		try {
			JoinVO vo=sqlSession.selectOne("authorizeUser", joinVO);
			if(vo != null){
				
				result = true;
			} else {
				result = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			//sqlSession.close();
		}
		return result;
	}
	public JoinVO video(JoinVO joinVO){
		JoinVO result = null;
		try {
			sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		result = sqlSession.selectOne("video", joinVO);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return result;
		
	}

	/**
	 * 메일을 보낸다.
	 */
	public void sendEmail(String to, String subject, String content) {
		// 이 객체는 SMTP 프로토콜에서 상대방안테 보낼 정보를 써놓은거야. 이밑 부분은 반드시 잇어야댐.
		// 이건 네이버 서버가 받을 값을 밑에다가 지정함.
		// 반드시 저 값으로 해야됨. 왜냐면 네이버 서버에서 자기네서버에 정보를 받아야 하니깐
		// 도메인 주소, 포트 번호, 각종 정책.. 등등... 맞는걸로 해줘야댐.
		// 밑 부분이 메일 로그인 시키는거..

		String from = "hot1023@nate.com";
		Properties p = new Properties(); // 정보를 담을 객체

		p.put("mail.smtp.host", "smtp.mail.nate.com"); // 네이버 SMTP *smtp.naver.com//네이트
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		// SMTP 서버에 접속하기 위한 정보들

		try {
			/// 여기서 로그인 함.. 메일..
			Authenticator auth = new SMTPAuthenticatior();
			Session ses = Session.getInstance(p, auth);
			// 여기까지 잘 실행되면 이미 로그인 된거야. 이메일로.
			ses.setDebug(true);

			// 그리고 여기서 상대방안테 보낼 메일. 제목, 내용, 주소. 쓰는거지.
			MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
			msg.setSubject(subject); // 제목

			Address fromAddr = new InternetAddress(from);
			msg.setFrom(fromAddr); // 보내는 사람

			Address toAddr = new InternetAddress(to);
			msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람

			msg.setContent(content, "text/html;charset=UTF-8"); // 내용과 인코딩

			// 그리고 여기서 전송. 메일 // 끝
			Transport.send(msg); // 전송
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("'Send Mail Failed..");
		}

		System.out.println("Send Mail Success");
		// 성공 시
	}

}

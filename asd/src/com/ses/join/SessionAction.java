package com.ses.join;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class SessionAction extends ActionSupport implements ModelDriven<JoinVO>, Preparable {
	
	private JoinVO joinVO;
	private SessionService service = new SessionService();
	


	public String join() {
		boolean result = service.join(joinVO); 
												// Email 중복.
		return result ? SUCCESS : NONE;
	}

	public String join1() {
		boolean result = service.join1(joinVO); // result가 true이면 가입됨. false이면 이미
												// Email 중복.
		return result ? SUCCESS : NONE;
	}
	public String join2(){
		joinVO = getDao().findJoin(joinVO);
		return SUCCESS;
	}
	
	public String login() {
		boolean result = service.authorizeUser(joinVO);
		/*if(ActionContext.getContext().getSession().get("user_m") == null){
			return LOGIN;
		}*/
		return result? SUCCESS:LOGIN;
	}

	public String logout() {
		service.logout();
		return SUCCESS;
	}
	/*
	* 화상채팅들어가기
	*/
	public String video(){
		boolean result = service.video(joinVO);
		return result ? SUCCESS : NONE;
	}
	@Override
	public void prepare() throws Exception {
		joinVO = new JoinVO();
	}

	@Override
	public JoinVO getModel() {
		return joinVO;
	}

	public SessionDAO getDao(){
		return new SessionDAO();
	}
	public JoinVO getJoinVO() {
		return joinVO;
	}
	
	public void setJoinVO(JoinVO joinVO) {
		this.joinVO = joinVO;
	}
}

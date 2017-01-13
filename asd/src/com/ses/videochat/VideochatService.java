package com.ses.videochat;

import java.util.List;

public class VideochatService {
	
	VideochatDAO videochatDAO = new VideochatDAO();

	public boolean enter(VideochatVO videochatVO) {
		boolean result = false;
		System.out.println("설브!");
		result = videochatDAO.enter(videochatVO);
		if(result){
			result=true;
		}
		return result;
	}
	
	public List<VideochatVO> rost(){
		return videochatDAO.rost();
	}
	
	public boolean checkon(VideochatVO videochatVO){
		System.out.println("====="+videochatVO);
		
		return videochatDAO.checkon(videochatVO);
	}
}

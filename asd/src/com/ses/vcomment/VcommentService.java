package com.ses.vcomment;

public class VcommentService {
	
	private VcommentDAO vcommentDAO = new VcommentDAO();
	
	public void vreply(VcommentVO vcommentVO){
		vcommentDAO.vreply(vcommentVO);
	}
	
	public VcommentVO vclist(VcommentVO vcommentVO){
		return vcommentDAO.vclist(vcommentVO);
		
	}

}

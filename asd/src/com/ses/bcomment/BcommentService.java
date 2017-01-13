package com.ses.bcomment;

import java.util.List;

public class BcommentService {

	private BcommentDAO bcommentDAO = new BcommentDAO();

		// 답변 쓰기
		public void reply(BcommentVO bcommentVO) {
			
			bcommentDAO.reply(bcommentVO);
		}		
		public BcommentVO relist(BcommentVO bcommentVO){
			return bcommentDAO.relist(bcommentVO);
		}
}

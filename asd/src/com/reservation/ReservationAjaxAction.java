package com.reservation;

import com.myboard.BoardService;
import com.myboard.BoardVO;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.Preparable;

public class ReservationAjaxAction extends ActionSupport implements Preparable{

		private String reservationDate;
		private ReservationService service;
		private ReservationVO reservationVO;
		private String email;
		

		public String reservated(){
			//reservationVO.setReservationDate(reservationDate);
			//reservationVO.setEmail(email);
			//System.out.println(reservationVO);
			//service.reservated(reservationVO);
			
			System.out.println(reservationDate + "]]]]]]]]]]]");
			System.out.println(email+"///////////");
			return SUCCESS;
		}
		
		@Override
		public void prepare() throws Exception {
			reservationVO = new ReservationVO();
			service = new ReservationService();
		}
		
		
		public String getEmail() {
			return email;
		}
		
		public void setEmail(String email) {
			this.email = email;
		}
		
		
		public String getReservationDate() {
			return reservationDate;
		}


		public void setReservationDate(String reservationDate) {
			this.reservationDate = reservationDate;
		}


		public ReservationService getService() {
			return service;
		}


		public void setService(ReservationService service) {
			this.service = service;
		}


		public ReservationVO getReservationVO() {
			return reservationVO;
		}


		public void setReservationVO(ReservationVO reservationVO) {
			this.reservationVO = reservationVO;
		}



}

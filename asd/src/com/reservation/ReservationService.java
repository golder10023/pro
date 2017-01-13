package com.reservation;

import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.core.async.DaemonThreadFactory;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.inject.Context;

public class ReservationService {
	ReservationDAO reservationDAO = new ReservationDAO();
	
	public void reservationWrite(ReservationVO reservationVO) {
		System.out.println("reservation 서버!");
		reservationDAO.reservationWrite(reservationVO);
	}
	
	public List<ReservationVO> reservationList() {
		return reservationDAO.reservationList();
	}
	
	/*public ReservationVO reservated(ReservationVO reservationVO){
		System.out.println("ser=="+reservationVO);
		return reservationDAO.reserved(reservationVO);
		
	}*/

}

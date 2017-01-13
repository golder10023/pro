package com.reservation;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class ReservationAction extends ActionSupport implements  ModelDriven<ReservationVO>,Preparable{
	private ReservationVO reservationVO;
	private List<ReservationVO> reservationList;
	private int result;
	private ReservationService reservationService;
	
	public String reservationWrite(){
		System.out.println("reservation action!");
		System.out.println("re=="+reservationVO);
		reservationService.reservationWrite(reservationVO);
		System.out.println("action 디비들어온후");
		return SUCCESS;
	}
	public String reservationList(){
		reservationList = reservationService.reservationList();
		System.out.println("===="+reservationList);
		return SUCCESS;
	}
	
	@Override
	public void prepare() throws Exception {
		reservationVO = new ReservationVO();
		reservationService = new ReservationService();
	}

	@Override
	public ReservationVO getModel() {
		// TODO Auto-generated method stub
		return reservationVO;
	}
	public ReservationVO getReservationVO() {
		return reservationVO;
	}
	public void setReservationVO(ReservationVO reservationVO) {
		this.reservationVO = reservationVO;
	}
	public List<ReservationVO> getReservationList() {
		return reservationList;
	}
	public void setReservationList(List<ReservationVO> reservationList) {
		this.reservationList = reservationList;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public ReservationService getReservationService() {
		return reservationService;
	}
	public void setReservationService(ReservationService reservationService) {
		this.reservationService = reservationService;
	}
	
	
		
	
}

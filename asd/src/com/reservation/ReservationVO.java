package com.reservation;

public class ReservationVO {
	private String email;
	private String expert;
	private String reservationDate;
	private String one_hour;
	private String two_hour;
	private String three_hour;
	private String four_hour;
	private String five_hour;
	private String six_hour;
	private String seven_hour;
	private String eight_hour;
	
	public ReservationVO() {
		super();
	}
	public ReservationVO(String email, String expert, String reservationDate, String one_hour, String two_hour,
			String three_hour, String four_hour, String five_hour, String six_hour, String seven_hour,
			String eight_hour) {
		super();
		this.email = email;
		this.expert = expert;
		this.reservationDate = reservationDate;
		this.one_hour = one_hour;
		this.two_hour = two_hour;
		this.three_hour = three_hour;
		this.four_hour = four_hour;
		this.five_hour = five_hour;
		this.six_hour = six_hour;
		this.seven_hour = seven_hour;
		this.eight_hour = eight_hour;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getExpert() {
		return expert;
	}
	public void setExpert(String expert) {
		this.expert = expert;
	}
	public String getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getOne_hour() {
		return one_hour;
	}
	public void setOne_hour(String one_hour) {
		this.one_hour = one_hour;
	}
	public String getTwo_hour() {
		return two_hour;
	}
	public void setTwo_hour(String two_hour) {
		this.two_hour = two_hour;
	}
	public String getThree_hour() {
		return three_hour;
	}
	public void setThree_hour(String three_hour) {
		this.three_hour = three_hour;
	}
	public String getFour_hour() {
		return four_hour;
	}
	public void setFour_hour(String four_hour) {
		this.four_hour = four_hour;
	}
	public String getFive_hour() {
		return five_hour;
	}
	public void setFive_hour(String five_hour) {
		this.five_hour = five_hour;
	}
	public String getSix_hour() {
		return six_hour;
	}
	public void setSix_hour(String six_hour) {
		this.six_hour = six_hour;
	}
	public String getSeven_hour() {
		return seven_hour;
	}
	public void setSeven_hour(String seven_hour) {
		this.seven_hour = seven_hour;
	}
	public String getEight_hour() {
		return eight_hour;
	}
	public void setEight_hour(String eight_hour) {
		this.eight_hour = eight_hour;
	}
	@Override
	public String toString() {
		return "ReservationVO [email=" + email + ", expert=" + expert + ", reservationDate=" + reservationDate
				+ ", one_hour=" + one_hour + ", two_hour=" + two_hour + ", three_hour=" + three_hour + ", four_hour="
				+ four_hour + ", five_hour=" + five_hour + ", six_hour=" + six_hour + ", seven_hour=" + seven_hour
				+ ", eight_hour=" + eight_hour + "]";
	}
	
	
}
	

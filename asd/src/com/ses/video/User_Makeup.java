package com.ses.video;

public class User_Makeup {
	   private String user_m;      
	   private String email_m;    
	   private String password_m;   
	   private String grade_m;     
	   private String is_valid_m; 
	   
	   public User_Makeup() {
	      super();
	   }
	   public User_Makeup(String email_m, String user_m, String password_m, String grade_m, String is_valid_m) {
	      this.email_m = email_m;
	      this.password_m = password_m;
	      this.grade_m = grade_m;
	      this.is_valid_m = is_valid_m;
	   }
	   public String getEmail_m() {
	      return email_m;
	   }
	   public void setEmail_m(String email_m) {
	      this.email_m = email_m;
	   }
	   public String getUser_m() {
	      return user_m;
	   }
	   public void setUser_m(String user_m) {
	      this.user_m = user_m;
	   }
	   public String getPassword_m() {
	      return password_m;
	   }
	   public void setPassword_m(String password_m) {
	      this.password_m = password_m;
	   }
	   public String getGrade_m() {
	      return grade_m;
	   }
	   public void setGrade_m(String grade_m) {
	      this.grade_m = grade_m;
	   }
	   public String getIs_valid_m() {
	      return is_valid_m;
	   }
	   public void setIs_valid_m(String is_valid_m) {
	      this.is_valid_m = is_valid_m;
	   }
	   @Override
	   public String toString() {
	      return "User_Makeup [email_m=" + email_m + ", user_m=" + user_m + ", password_m=" + password_m + ", grade_m="
	            + grade_m + ", is_valid_m=" + is_valid_m + "]";
	   }
	   
	   
	   
	}
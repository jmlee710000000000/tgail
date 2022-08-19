package org.study.home.model;

import java.sql.Timestamp;



public class MemberDTO {
	private int user_no;
	private String user_id;
	private String user_pw;
	private String user_nick;
	private String user_address;
	private String user_phone;
	private boolean user_adult;
	private String user_email;
	private boolean email_check;
	private int adminCk;
	private Timestamp user_insertDate;
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public boolean isUser_adult() {
		return user_adult;
	}
	public void setUser_adult(boolean user_adult) {
		this.user_adult = user_adult;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public boolean isEmail_check() {
		return email_check;
	}
	public void setEmail_check(boolean email_check) {
		this.email_check = email_check;
	}
	public int getAdminCk() {
		return adminCk;
	}
	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}
	public Timestamp getUser_insertDate() {
		return user_insertDate;
	}
	public void setUser_insertDate(Timestamp user_insertDate) {
		this.user_insertDate = user_insertDate;
	}
	
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	@Override
	public String toString() {
		return "MemberDTO [user_no=" + user_no + ", user_id=" + user_id + ", user_pw=" + user_pw + ", user_nick="
				+ user_nick + ", user_address=" + user_address + ", user_phone=" + user_phone + ", user_adult="
				+ user_adult + ", user_email=" + user_email + ", email_check=" + email_check + ", adminCk=" + adminCk
				+ ", user_insertDate=" + user_insertDate + "]";
	}
	public void setMemberPw(String string) {
		// TODO Auto-generated method stub
		
	}
	
	
}
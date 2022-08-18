package org.study.home.model;

import java.sql.Timestamp;




public class BoardDTO {
	
	private int b_no;
	private String b_title;
	private String b_content;
	private String b_writer;
	private Timestamp b_regDate;
	private int b_count;
	private int b_recommend;
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public Timestamp getB_regDate() {
		return b_regDate;
	}
	public void setB_regDate(Timestamp b_regDate) {
		this.b_regDate = b_regDate;
	}
	public int getB_count() {
		return b_count;
	}
	public void setB_count(int b_count) {
		this.b_count = b_count;
	}
	public int getB_recommend() {
		return b_recommend;
	}
	public void setB_recommend(int b_recommend) {
		this.b_recommend = b_recommend;
	}
}

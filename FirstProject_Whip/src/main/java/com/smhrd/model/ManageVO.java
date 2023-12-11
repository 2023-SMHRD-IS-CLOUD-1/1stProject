package com.smhrd.model;

public class ManageVO {

	// 고객관리 게시판

	private int management_post_num;
	private String management_post_title;
	private String management_post_content;
	private String posted_at;
	private String management_post_id;
	private String management_post_relpy;
	private String management_answer;

	public String getManagement_answer() {
		return management_answer;
	}

	public void setManagement_answer(String management_answer) {
		this.management_answer = management_answer;
	}

	public int getManagement_post_num() {
		return management_post_num;
	}

	public void setManagement_post_num(int management_post_num) {
		this.management_post_num = management_post_num;
	}

	public String getManagement_post_title() {
		return management_post_title;
	}

	public void setManagement_post_title(String management_post_title) {
		this.management_post_title = management_post_title;
	}

	public String getManagement_post_content() {
		return management_post_content;
	}

	public void setManagement_post_content(String management_post_content) {
		this.management_post_content = management_post_content;
	}

	public String getPosted_at() {
		return posted_at;
	}

	public void setPosted_at(String posted_at) {
		this.posted_at = posted_at;
	}

	public String getManagement_post_id() {
		return management_post_id;
	}

	public void setManagement_post_id(String management_post_id) {
		this.management_post_id = management_post_id;
	}

	public String getManagement_post_relpy() {
		return management_post_relpy;
	}

	public void setManagement_post_relpy(String management_post_relpy) {
		this.management_post_relpy = management_post_relpy;
	}

}

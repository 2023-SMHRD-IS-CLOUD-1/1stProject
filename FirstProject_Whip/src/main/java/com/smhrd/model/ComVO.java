package com.smhrd.model;

public class ComVO {

	private int cmt_num;
	private int post_num;
	private String cmt_content;
	private String created_at;
	private int cmt_likes;
	private String user_id;
	private String update_at;

	public int getCmt_num() {
		return cmt_num;
	}

	public void setCmt_num(int cmt_num) {
		this.cmt_num = cmt_num;
	}

	public int getPost_num() {
		return post_num;
	}

	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}

	public String getCmt_content() {
		return cmt_content;
	}

	public void setCmt_content(String cmt_content) {
		this.cmt_content = cmt_content;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

	public int getCmt_likes() {
		return cmt_likes;
	}

	public void setCmt_likes(int cmt_likes) {
		this.cmt_likes = cmt_likes;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUpdate_at() {
		return update_at;
	}

	public void setUpdate_at(String update_at) {
		this.update_at = update_at;
	}

	// 메소드 (alt shift s)
//	public MemberVO(String email, String pw, String tel, String address) {
//		super();
//		this.email = email;
//		this.pw = pw;
//		this.tel = tel;
//		this.address = address;
//	}

}

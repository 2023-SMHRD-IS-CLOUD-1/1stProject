package com.smhrd.model;

public class MatchVO {
	
	// 매칭
	private int match_num;
	private int err_num;
	private String user_id;
	public int getMatch_num() {
		return match_num;
	}
	public void setMatch_num(int match_num) {
		this.match_num = match_num;
	}
	public int getErr_num() {
		return err_num;
	}
	public void setErr_num(int err_num) {
		this.err_num = err_num;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getCreated_at() {
		return created_at;
	}
	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}
	public String getMatch_yn() {
		return match_yn;
	}
	public void setMatch_yn(String match_yn) {
		this.match_yn = match_yn;
	}
	private String created_at;
	private String match_yn;

	
	
	
	
}

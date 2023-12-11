package com.smhrd.model;

public class RatingVO {

	// 평점
	private int rating_num;
	private String user_id;
	private int err_num;
	private int err_rating;
	private String created_at;

	public int getRating_num() {
		return rating_num;
	}

	public void setRating_num(int rating_num) {
		this.rating_num = rating_num;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getErr_num() {
		return err_num;
	}

	public void setErr_num(int err_num) {
		this.err_num = err_num;
	}

	public int getErr_rating() {
		return err_rating;
	}

	public void setErr_rating(int err_rating) {
		this.err_rating = err_rating;
	}

	public String getCreated_at() {
		return created_at;
	}

	public void setCreated_at(String created_at) {
		this.created_at = created_at;
	}

}

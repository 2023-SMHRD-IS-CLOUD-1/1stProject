package com.smhrd.model;

public class MemberVO {
	// 회원 데이터를 저장할 수 있도록 나만의 자료형
	// 1) 필드--> 테이블의 컬럼명과 일치 시키기
	private String email;
	private String pw;
	private String tel;
	private String address;
	
	// 2) 메소드 alt shift s

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}

		
	
}

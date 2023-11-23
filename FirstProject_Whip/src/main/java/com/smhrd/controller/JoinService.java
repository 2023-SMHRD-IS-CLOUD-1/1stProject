package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

// 일반 클래스로 만들어줌 --> POJO(Plain Old Java Object)
public class JoinService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_gender = request.getParameter("user_gender");
		String user_nick = request.getParameter("user_nick");
		String user_jumin = request.getParameter("user_jumin");
		String user_phone = request.getParameter("user_phone");
		String user_addr1 = request.getParameter("user_addr1");
//		private String user_id;
//		private String user_pw;
//		private String user_name;
//		private String user_birthdate;
//		private String user_gender;
//		private String user_nick;
//		private String user_jumin;
//		private String user_phone;
//		private String user_addr1;
//		private String joined_at;
//		private double user_level;
//		private String user_id_check;
//		private String user_id_block;
//		
		MemberVO vo = new MemberVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		vo.setUser_name(user_name);
		vo.setUser_gender(user_gender);
		vo.setUser_nick(user_nick);
		vo.setUser_jumin(user_jumin);
		vo.setUser_phone(user_phone);
		vo.setUser_addr1(user_addr1);

		DAO dao = new DAO();

		int row = dao.join(vo);

		if (row > 0) {
			request.setAttribute("member", vo);
			return "join_success";
		} else {
			// redirect:/ >> 약속기호 (특별한 의미는 없음)
			// redirect 방식으로 이동하는걸 FC에게 알려주는 역할.
			return "redirect:/Gomain.do";
		}

	}

}

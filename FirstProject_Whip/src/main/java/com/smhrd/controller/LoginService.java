package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 일반 클래스로 만들어줌 --> POJO(Plain Old Java Object)
public class LoginService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
// id , pw 받아오기
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
//		private String user_id;
//		private String user_pw;

		UserVO vo = new UserVO();
		vo.setUser_id(user_id);

		UserDAO dao = new UserDAO();

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

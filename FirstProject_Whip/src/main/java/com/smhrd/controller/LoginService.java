package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 로그인 서비스
public class LoginService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");
// id , pw 받아오기
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		// uservo 로 받아온 정보 묶기 
		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);

		UserDAO dao = new UserDAO();

		UserVO result = dao.login(vo);
		// 로그인 성공
		if(result != null ) {
			HttpSession session = request.getSession();
			session.setAttribute("user", result);
			UserVO res = (UserVO)session.getAttribute("user");
			
		}
		return null;

	}

}

package com.smhrd.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 일반 클래스로 만들어줌 --> POJO(Plain Old Java Object)
public class UpdateService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_nick = request.getParameter("user_nick");
		String user_phone = request.getParameter("user_phone");
		String user_addr1 = request.getParameter("user_addr1");
		
		HttpSession session = request.getSession();
//		UserVO loginVo = (UserVO)session.getAttribute("user");	
//		String id = loginVo.getUser_id();

		UserVO vo = new UserVO();
		
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		vo.setUser_name(user_name);
		vo.setUser_nick(user_nick);
		vo.setUser_phone(user_phone);
		vo.setUser_addr1(user_addr1);
		
		UserDAO dao = new UserDAO();
		
		UserVO result = dao.update(vo);
		
		
		return null;

	}

}

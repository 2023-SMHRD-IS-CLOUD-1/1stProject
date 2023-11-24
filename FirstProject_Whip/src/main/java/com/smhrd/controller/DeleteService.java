package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 일반 클래스로 만들어줌 --> POJO(Plain Old Java Object)
public class DeleteService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		System.out.println("test");
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO)session.getAttribute("user");	
		String user_id = loginVo.getUser_id();
		System.out.println(user_id);

		UserVO vo = new UserVO();
		vo.setUser_id(user_id);

		UserDAO dao = new UserDAO();
		
		int result = dao.delete(vo);
		
		if(result>1) {
			session.invalidate();
			
		}
		
		return null;

	}

}

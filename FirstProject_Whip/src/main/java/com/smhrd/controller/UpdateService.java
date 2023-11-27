package com.smhrd.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 회원정보 수정 서비스 
public class UpdateService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");
		// 수정할 pw, name, nick, phone, addr1 을 받아와서 수정
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_nick = request.getParameter("user_nick");
		String user_phone = request.getParameter("user_phone");
		String user_addr1 = request.getParameter("user_addr1");
		
		// session에 저장된 id 정보 가져오기 
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO)session.getAttribute("user");	
		String user_id = loginVo.getUser_id();
		
		// uservo로 받아온 정보 넘기기
		UserVO vo = new UserVO();	
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		vo.setUser_name(user_name);
		vo.setUser_nick(user_nick);
		vo.setUser_phone(user_phone);
		vo.setUser_addr1(user_addr1);
		
		UserDAO dao = new UserDAO();
		
		int row = dao.update(vo);
		// 성공
		if(row>0) {
			session.setAttribute("user",vo);
			// return 로그인 페이지
		}else {
		    System.out.println("null");
		    // return 다시시도해주세요 페이지
		}
		return null;
//		

	}

}

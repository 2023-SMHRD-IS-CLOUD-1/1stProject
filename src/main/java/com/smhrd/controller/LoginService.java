package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;
// 일반 클래스로 만들어줌 --> POJO(Plain Old Java Object)
public class LoginService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setPw(pw);
		DAO dao = new DAO();
		MemberVO result = dao.login(vo);
		
		if(result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("member", result);
			MemberVO res1= (MemberVO)session.getAttribute("member");
		}
			return "redirect:/Gomain.do";
		
		
		
	}

}

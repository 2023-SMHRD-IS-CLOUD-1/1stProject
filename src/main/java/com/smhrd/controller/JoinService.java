package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class JoinService implements Command{
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		MemberVO vo = new MemberVO();
		vo.setEmail(email);
		vo.setAddress(address);
		vo.setPw(pw);
		vo.setTel(tel);
		DAO dao = new DAO();
		int row = dao.join(vo);
		if(row > 0) {
			request.setAttribute("member", vo);
			return "join_success";
		}else {
			// redirect:/ >> 우리의 약속 기호
			// >> redirect 방식으로 이동해라 !!를 FC에게 알려주는 역할
			return "redirect:/Gomain.do";
		}
	
	
	}

}

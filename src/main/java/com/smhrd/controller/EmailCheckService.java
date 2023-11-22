package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class EmailCheckService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 1. 요청 데이터 꺼내오기
		String receive_email = request.getParameter("recieve_email");
		
		DAO dao = new DAO();
		String result = dao.emailCheck(receive_email);
		System.out.println(result);
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		if(result != null) {
			out.print("true");
			
		}else {
			out.print("false");
		}
		return null; // 이동할 페이지
	}

}

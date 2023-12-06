package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.smhrd.model.ManageDAO;
import com.smhrd.model.ManageVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 회원 탈퇴 기능 
public class Manage_answerService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션에 저장되어있는 아이디 저장
		String management_answer =  request.getParameter("answerContent");
		System.out.println("답변 내용" + management_answer);
		String temp = request.getParameter("manage_num");
		int management_post_num = Integer.parseInt(temp);
		System.out.println("글 번호"+management_post_num);
		
		ManageVO vo = new ManageVO();
		vo.setManagement_post_num(management_post_num);
		vo.setManagement_answer(management_answer);

		ManageDAO dao = new ManageDAO();
		int row = dao.manage_answer(vo);
		if(row>0) {
			HttpSession session = request.getSession();
			session.setAttribute("manage_answer", vo);
			ManageVO mana = (ManageVO)session.getAttribute("manage_answer");
			int num = vo.getManagement_post_num();
			String answer = vo.getManagement_answer();
			System.out.println(answer);
			System.out.println(num);
		}else {
			
		}
		
		return null;

	}

}

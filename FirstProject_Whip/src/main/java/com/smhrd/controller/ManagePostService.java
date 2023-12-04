package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ManageDAO;
import com.smhrd.model.ManageVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 회원 탈퇴 기능 
public class ManagePostService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션에 저장되어있는 아이디 저장
		System.out.println("test");
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO)session.getAttribute("user");	
		String user_id = loginVo.getUser_id();
		System.out.println(user_id);
		
		String management_post_title = request.getParameter("management_post_title");
		String management_post_content = request.getParameter("management_post_content");
		ManageVO vo = new ManageVO();
		vo.setManagement_post_id(user_id);
		vo.setManagement_post_content(management_post_content);
		vo.setManagement_post_title(management_post_title);
		

		ManageDAO dao = new ManageDAO();
		int row = dao.manageupdate(vo);
		if(row>0) {
			request.setAttribute("management", vo);
		}else {
			
		}
		
		return null;

	}

}

package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.ManageDAO;
import com.smhrd.model.ManageVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 글 수정하기
public class Manage_modifyService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			System.out.println("성공");
			
			String management_post_title = request.getParameter("management_post_title");
			System.out.println(management_post_title);
			String management_post_content = request.getParameter("management_post_content");
			System.out.println(management_post_content);
			String temp = request.getParameter("post_num");
			int management_post_num = Integer.parseInt(temp);
			System.out.println("글번호"+management_post_num);
			
			ManageVO vo = new ManageVO();
			vo.setManagement_post_content(management_post_content);
			vo.setManagement_post_title(management_post_title);
			vo.setManagement_post_num(management_post_num);
			
			ManageDAO dao = new ManageDAO();
			int row = dao.manage_modify(vo);
			if(row>0) {
				 request.setAttribute("updateman", vo);
				 System.out.println("업데이트 성공");
			}
	    return null;
	
	}
}

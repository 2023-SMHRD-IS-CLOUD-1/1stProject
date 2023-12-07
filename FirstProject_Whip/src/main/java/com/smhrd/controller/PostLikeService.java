package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 심부름 글 상세보기 기능
public class PostLikeService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		PrintWriter out = response.getWriter();
		String temp = request.getParameter("thisPostNum");
		String user_id = request.getParameter("user_id");
		int post_num = Integer.parseInt(temp);
		PostDAO dao = new PostDAO();
		
		
		int result = dao.checkPostLike(post_num, user_id);
		
		if (result == 1) {
			out.print(result);
			dao.deleteLike(post_num, user_id);
			dao.decreaseLikes(post_num);
		} else {
			out.print(0);
			dao.updateLike(post_num, user_id);
			dao.increaseLikes(post_num);
		}
		
	    return null;
	
	}
}

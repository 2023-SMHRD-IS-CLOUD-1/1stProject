package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 심부름 글 상세보기 기능
public class PostReadService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String temp = request.getParameter("clickedPostNum");
			int post_num = Integer.parseInt(temp);
			PostVO vo = new PostVO();
			vo.setPost_num(post_num);
			PostDAO dao = new PostDAO();
			dao.increasePostViews(vo);
			System.out.println("2222222222222222222222");
			PostVO result = dao.postContentLoad(vo);
			if(result != null ) {
				HttpSession session = request.getSession();
				session.setAttribute("postContent", result);
				PostVO postContent = (PostVO)session.getAttribute("postContent");
			}
	    return null;
	
	}
}

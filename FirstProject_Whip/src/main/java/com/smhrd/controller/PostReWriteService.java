package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 로그아웃 서비스
public class PostReWriteService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		String temp = request.getParameter("result_post_num");
		int post_num = Integer.parseInt(temp);
		String post_title = request.getParameter("post_title");
		String post_content = request.getParameter("post_content");
		PostDAO dao = new PostDAO();
		PostVO vo = new PostVO();
		vo.setPost_num(post_num);
		vo.setPost_title(post_title);
		vo.setPost_content(post_content);
		
		int row = dao.postmodify(vo);
		
		if(row>0) {
			return "redirect:/Gopost.do";
		} else {
			return "redirect:/Gopost.do";
		}
		
	}

}

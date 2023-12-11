package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 게시글 번호 보내기
public class PostSendNumService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String temp = request.getParameter("post_num");
		int post_num = Integer.parseInt(temp);
		PostDAO dao = new PostDAO();

		PostVO result = dao.getPostInfo(post_num);
		request.setAttribute("result", result);

		return "post_write";
	}

}

package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.PostDAO;

// 글 삭제 기능
public class PostdeleteService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String post_num1 = request.getParameter("thisPostNum");
		int post_num = Integer.parseInt(post_num1);

		PostDAO dao = new PostDAO();
		int row = dao.postdelete(post_num);

		return null;

	}

}

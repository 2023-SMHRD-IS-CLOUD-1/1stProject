package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.FvPostDAO;
import com.smhrd.model.FvPostVO;
import com.smhrd.model.PostVO;
import com.smhrd.model.UserVO;

public class FvPostService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");

		int favorite_post = Integer.parseInt(request.getParameter("favorite_post"));

		HttpSession session = request.getSession();
		UserVO loginVO = (UserVO) session.getAttribute("user");
		String user_id = loginVO.getUser_id();

		PostVO postVO = (PostVO) session.getAttribute("post");
		int post_num = postVO.getPost_num();

		FvPostVO vo = new FvPostVO();
		vo.setFavorite_post(favorite_post);
		vo.setPost_num(post_num);

		FvPostDAO dao = new FvPostDAO();
		int row = dao.insertFvPost(vo);

		return null;

	}

}

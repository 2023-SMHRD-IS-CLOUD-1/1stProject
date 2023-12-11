package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 게시글 수정 기능
public class PostmodifyService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 게시글 제목 수정
		String post_title = request.getParameter("post_title");

		// 심부름 내용 수정
		String post_content = request.getParameter("post_content");

		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();

		PostVO vo = new PostVO();
		vo.setUser_id(user_id);
		vo.setPost_content(post_content);
		vo.setPost_title(post_title);

		PostDAO dao = new PostDAO();
		int row = dao.postmodify(vo);
		if (row > 0) {
			session.setAttribute("post", vo);
		} else {

		}
		return null;

	}

}

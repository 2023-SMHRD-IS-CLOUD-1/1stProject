package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.FvPostVO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 게시글 등록 기능
public class PostupdateService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String post_title = request.getParameter("post_title");
		String post_content = request.getParameter("post_content");

		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();

		PostVO vo = new PostVO();
		vo.setUser_id(user_id);
		vo.setPost_title(post_title);
		vo.setPost_content(post_content);

		PostDAO dao = new PostDAO();
		int row = dao.postupdate(vo);
		if (row > 0) {
			session.setAttribute("post", vo);
		} else {
			// 실패시
			System.out.println("실패");
		}
		return "redirect:/Gopost.do";

	}

}

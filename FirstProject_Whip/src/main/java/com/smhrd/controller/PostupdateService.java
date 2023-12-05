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

// 심부름 등록 기능
public class PostupdateService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");
		// 글 제목
		String post_title = request.getParameter("post_title");
		System.out.println(post_title);
		// 글 내용
		String post_content = request.getParameter("post_content");
		

		// session에 저장된 id 정보 가져오기
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();
		System.out.println(user_id);

		// errandvo로 받아온 정보저장하기 id, 제목, 카테고리 넘버, 내용, 단가
		PostVO vo = new PostVO();
		vo.setUser_id(user_id);
		vo.setPost_title(post_title);
		vo.setPost_content(post_content);
		
//		
		PostDAO dao = new PostDAO();
//		// errupdate 기능 실행
		int row = dao.postupdate(vo);
//		
		if(row>0) {
//			// post 라는 이름으로 저장
			session.setAttribute("post", vo);
			// 성공시 return 게시글 페이지
		} else {
			// 실패시
			System.out.println("실패");
		}
		return "redirect:/Gopost.do";

	}

}

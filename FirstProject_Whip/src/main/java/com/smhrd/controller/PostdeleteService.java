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

// 글 삭제 기능
public class PostdeleteService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션에 저장되어 있는 아이디 가져오기
		System.out.println("test");
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO)session.getAttribute("user");	
		String user_id = loginVo.getUser_id();
		

		PostVO vo = new PostVO();
		vo.setUser_id(user_id);

		PostDAO dao = new PostDAO();
		
		int result = dao.postdelete(vo);
		
		if(result>1) {
			session.invalidate();
			// 성공시 게시판 페이지로 이동
		} else {
			// 실패시 return 다시시도해주세요 페이지
		}
		
		return null;

	}

}

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
		
		// 게시글 목록번호 -> 정수형 변환 
		int favorite_post = Integer.parseInt(request.getParameter("favorite_post"));
		
		// session에 저장된 유저 id 정보 가져오기 
		HttpSession session = request.getSession();
		UserVO loginVO =(UserVO) session.getAttribute("user");
		String user_id = loginVO.getUser_id();
		
		// 게시글 번호 정보 세션에서 가져오기 
		PostVO postVO = (PostVO)session.getAttribute("post");
		int post_num = postVO.getPost_num();
		
		// FvPostVO로 받아온 정보 저장하기
		FvPostVO vo = new FvPostVO();
		vo.setFavorite_post(favorite_post);
		vo.setPost_num(post_num);
		
		// FvPostDAO를 사용하여 게시글 즐겨찾기 추가
		FvPostDAO dao = new FvPostDAO();
		int row = dao.insertFvPost(vo);
		
		
		return null;
	
	
	}

}

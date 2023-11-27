package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandVO;
import com.smhrd.model.RatingDAO;
import com.smhrd.model.RatingVO;
import com.smhrd.model.UserVO;

public class RatingService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("test");
		// 심부름 평점 -> 정수형 변환
		int err_rating = Integer.parseInt(request.getParameter("err_rating"));
        System.out.println(err_rating);
		// 작성 일자 -> String
		
		// session에 저장된 수행인 id 정보 가져오기
		HttpSession session = request.getSession();
		UserVO loginVO = (UserVO)session.getAttribute("user");	
		String user_id = loginVO.getUser_id();
		// 심부름 번호 정보 세션에서 가져오기 
		ErrandVO errandVO = (ErrandVO)session.getAttribute("errand");
		int err_num = errandVO.getErr_num();
		// RatingService에서 수행인인 회원아이디는 user_id->attendant로 변수 지정
		
		// RatingVO로 받아온 정보 저장하기 수행인아이디, 심부름 번호, 심부름 평점, 작성 일자
		RatingVO vo = new RatingVO();
		vo.setUser_id(user_id);
		vo.setErr_num(err_num);
		vo.setErr_rating(err_rating);
		
		RatingDAO dao = new RatingDAO();
		
		int row = dao.insertRating(vo);
		
		if(row>0) {
			session.setAttribute("rating", vo);
		}else {
			System.out.println("실패");
		}
		
		return null;
	}

}

package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandVO;
import com.smhrd.model.FvErrDAO;
import com.smhrd.model.FvErrVO;
import com.smhrd.model.UserVO;

@WebServlet("/FvErr")
public class FvErrService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 목록 번호 -> 정수형 변환
		int favorite_err_num = Integer.parseInt(request.getParameter("favorite_err_num"));
		

		// session에 저장된 수행인 id 정보 가져오기
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();
		// 심부름 번호 정보 세션에서 가져오기
		ErrandVO errandVO = (ErrandVO)session.getAttribute("errand");
		int err_num = errandVO.getErr_num();
		// FvErrVO로 받아온 정보 저장하기 
		FvErrVO vo = new FvErrVO();
		vo.setErr_num(err_num);
		vo.setFavorite_err_num(favorite_err_num);
		
		// FvErrDAO를 사용하여 심부름 즐겨찾기 추가 
		FvErrDAO dao = new FvErrDAO();
		int row = dao.insertFvErr(vo);
		
		// 필요에 따라 적절한 응답 로직 작성 
		return null;

	}

}

package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 삭제 기능
public class ErrdeleteService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션에 저장되어 있는 아이디 꺼내오기
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO)session.getAttribute("user");	
		String user_id = loginVo.getUser_id();
		

		ErrandVO vo = new ErrandVO();
		vo.setUser_id(user_id);

		ErrandDAO dao = new ErrandDAO();
		
		int result = dao.errdelete(vo);
		// 성공시 세션에 저장되어있는 모든 정보 지우기
		if(result>1) {
			session.invalidate();
			// return main.jsp
		}
		
		return null;

	}

}

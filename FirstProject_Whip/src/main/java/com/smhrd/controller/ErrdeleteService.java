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
		System.out.println("성공");
		String temp = request.getParameter("clickedErrNum");
		int err_num = Integer.parseInt(temp);
		System.out.println("심부름 번호"+err_num);
		

		ErrandVO vo = new ErrandVO();
		vo.setErr_num(err_num);

		ErrandDAO dao = new ErrandDAO();
		
		int result = dao.errdelete(vo);
		// 성공시 세션에 저장되어있는 모든 정보 지우기
		if(result>1) {
			HttpSession session = request.getSession();
			session.invalidate();
			// return main.jsp
		}
		
		return null;

	}

}

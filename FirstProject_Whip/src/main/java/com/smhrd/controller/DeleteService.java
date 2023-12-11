package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class DeleteService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();

		UserVO vo = new UserVO();
		vo.setUser_id(user_id);

		UserDAO dao = new UserDAO();

		int result = dao.delete(vo);
		// 회원탈퇴 성공시 세션에 저장되어있는 모든데이터 삭제
		if (result == 1) {
			session.invalidate();
		}
		return "redirect:/Gomain.do";
	}

}

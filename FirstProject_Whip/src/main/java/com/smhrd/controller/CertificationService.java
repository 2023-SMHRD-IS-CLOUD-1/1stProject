package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class CertificationService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");

		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();
		String user_nick = loginVo.getUser_nick();
		String user_birthdate = loginVo.getUser_birthdate();
		String user_gender = loginVo.getUser_gender();
		String user_addr1 = loginVo.getUser_addr1();
		double user_level = loginVo.getUser_level();
		String user_phone = loginVo.getUser_phone();

		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_jumin(id);
		vo.setUser_id_check("y");
		vo.setUser_name(name);
		vo.setUser_birthdate(user_birthdate);
		vo.setUser_gender(user_gender);
		vo.setUser_nick(user_nick);
		vo.setUser_addr1(user_addr1);
		vo.setUser_level(user_level);
		vo.setUser_phone(user_phone);

		UserDAO dao = new UserDAO();
		int row = dao.certification(vo);
		// 성공
		if (row > 0) {
			session.setAttribute("user", vo);
		} else {

		}
		return null;
	}

}

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

// 심부름 등록 기능
public class ErrupdateService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String err_name = request.getParameter("err_name");
		String temp = request.getParameter("err_category_num");
		int err_category_num = Integer.parseInt(temp);
		String err_content = request.getParameter("err_content");
		String temp1 = request.getParameter("err_price");
		int err_price = Integer.parseInt(temp1);

		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();

		ErrandVO vo = new ErrandVO();
		vo.setUser_id(user_id);
		vo.setErr_name(err_name);
		vo.setErr_content(err_content);
		vo.setErr_category_num(err_category_num);
		vo.setErr_price(err_price);

		ErrandDAO dao = new ErrandDAO();
		int row = dao.errupdate(vo);
		if (row > 0) {
			session.setAttribute("errand", vo);
		} else {

		}
		return "redirect:/GoerrListPage.do";

	}

}

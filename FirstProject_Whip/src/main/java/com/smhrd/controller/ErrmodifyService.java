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

public class ErrmodifyService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String err_name = request.getParameter("err_name");
		String temp = request.getParameter("err_category_num");
		int err_category_num = Integer.parseInt(temp);
		String err_content = request.getParameter("err_content");
		String temp1 = request.getParameter("err_price");
		int err_price = Integer.parseInt(temp1);
		
		String temp2 = request.getParameter("err_num");
		int err_num = Integer.parseInt(temp2);
	
		ErrandVO vo = new ErrandVO();
		vo.setErr_name(err_name);
		vo.setErr_content(err_content);
		vo.setErr_category_num(err_category_num);
		vo.setErr_price(err_price);
		vo.setErr_num(err_num);

		ErrandDAO dao = new ErrandDAO();
		int row = dao.errmodify(vo);
		if(row>0) {
			HttpSession session = request.getSession();
			session.setAttribute("errand", vo);
		} else {
			
		}
		return null;

	}

}

package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 카테고리 기능
public class Err_readService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		String temp = request.getParameter("categoryNumber");
		int err_category_num = Integer.parseInt(temp);
		ErrandVO vo = new ErrandVO();
		vo.setErr_category_num(err_category_num);

		ErrandDAO dao = new ErrandDAO();
		List<ErrandVO> result = dao.ReadErr(vo);
		PrintWriter out = response.getWriter();

		if (result.isEmpty()) {
			out.print("false");
		} else {
			Gson gson = new Gson();
			String result1 = gson.toJson(result);
			out.print(result1);
		}
		return null;
	}

}

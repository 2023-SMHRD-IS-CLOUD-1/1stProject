package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// id 찾기 
public class FindService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user_name = request.getParameter("user_name");
		String user_jumin = request.getParameter("user_jumin");

		UserVO vo = new UserVO();
		vo.setUser_name(user_name);
		vo.setUser_jumin(user_jumin);

		UserDAO dao = new UserDAO();
		UserVO result = dao.find(vo);

		if (result != null) {
			HttpSession session = request.getSession();
			UserVO user = (UserVO) session.getAttribute("user");
			String user_id = result.getUser_id();
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");

			PrintWriter out = response.getWriter();
			out.print("{\"user_id\": \"" + user_id + "\"}");
			out.flush();
		}

		return null;

	}

}

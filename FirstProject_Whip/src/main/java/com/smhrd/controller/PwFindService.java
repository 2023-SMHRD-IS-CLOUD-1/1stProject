package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 비번 찾기 
public class PwFindService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user_name = request.getParameter("user_name");
		String user_jumin = request.getParameter("user_jumin");
		String user_id = request.getParameter("user_id");

		UserVO vo = new UserVO();
		vo.setUser_name(user_name);
		vo.setUser_jumin(user_jumin);
		vo.setUser_id(user_id);

		UserDAO dao = new UserDAO();
		UserVO result = dao.pwfind(vo);
		if (result != null) {
			HttpSession session = request.getSession();
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");

			PrintWriter out = response.getWriter();
			out.print("{\"user_pw\": \"" + result.getUser_pw() + "\"}");
			out.flush();
		}

		return null;

	}

}
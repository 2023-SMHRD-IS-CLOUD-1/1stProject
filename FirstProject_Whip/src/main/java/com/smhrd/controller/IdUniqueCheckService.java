package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;

public class IdUniqueCheckService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");

		UserDAO dao = new UserDAO();

		String result = dao.idUniqueCheck(userId);

		PrintWriter out = response.getWriter();
		if (result != null) {
			out.print("{\"k\":\"true\"}");
		} else {
			out.print("{\"k\":\"false\"}");
		}

		return null;
	}

}

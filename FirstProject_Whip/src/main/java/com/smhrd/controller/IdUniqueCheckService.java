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
		// TODO Auto-generated method stub
			System.out.println("유체크");
			String userId = request.getParameter("userId");
			
			UserDAO dao = new UserDAO();
		
			String result = dao.idUniqueCheck(userId);
			
			PrintWriter out = response.getWriter();
			if (result != null) {
				System.out.println(result);
				out.print("{\"k\":\"true\"}");
			}
			else {
				System.out.println("else");
				out.print("{\"k\":\"false\"}");
			}
		
		
		return null;
	}

}

package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class SelectOneService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		UserVO loginUser = (UserVO) session.getAttribute("user");

		if (loginUser == null) {
			return "main";
		}

		UserDAO userDAO = new UserDAO();
		UserVO userProfile = userDAO.selectById(loginUser.getUser_id());
		request.setAttribute("userProfile", userProfile);

		return "profile";

	}

}

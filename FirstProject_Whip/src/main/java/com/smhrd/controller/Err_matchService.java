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
import com.smhrd.model.MatchDAO;
import com.smhrd.model.MatchVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 수행 신청 기능
public class Err_matchService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String temp = request.getParameter("clickedErrNum");
		int err_num = Integer.parseInt(temp);
		String user_id = request.getParameter("user_id");
		MatchVO vo = new MatchVO();
		vo.setErr_num(err_num);
		vo.setUser_id(user_id);

		MatchDAO dao = new MatchDAO();
		int row = dao.matchUpdate(vo);

		if (row > 0) {
			request.setAttribute("match", vo);
		} else {

		}
		return null;

	}
}

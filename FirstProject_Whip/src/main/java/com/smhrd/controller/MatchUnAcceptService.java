package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MatchDAO;
import com.smhrd.model.MatchVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class MatchUnAcceptService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		int errNum = Integer.parseInt(request.getParameter("errNum"));

		MatchVO vo = new MatchVO();
		vo.setUser_id(userId);
		vo.setErr_num(errNum);

		MatchDAO dao = new MatchDAO();
		int row = dao.matchUnAccept1(vo);
		dao.errMatchUpdate(vo);

		return null;

	}
}
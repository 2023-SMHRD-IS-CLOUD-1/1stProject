package com.smhrd.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MatchDAO;
import com.smhrd.model.MatchVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class MatchAcceptService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		int errNum = Integer.parseInt(request.getParameter("errNum"));

		MatchVO vo = new MatchVO();

		vo.setErr_num(errNum);
		MatchDAO dao = new MatchDAO();
		MatchDAO mdao = new MatchDAO();
		List<String> userList = mdao.MatchIdload(errNum);
		for (int i = 0; i < userList.size(); i++) {
			vo.setUser_id(userList.get(i));
			dao.matchUnAccept1(vo);
		}
		vo.setUser_id(userId);
		dao.matchAccept1(vo);
		dao.errMatchUpdate(vo);

		return null;

	}
}
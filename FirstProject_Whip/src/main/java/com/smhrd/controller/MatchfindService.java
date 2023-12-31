package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.ManageDAO;
import com.smhrd.model.ManageVO;
import com.smhrd.model.MatchDAO;
import com.smhrd.model.MatchVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 신청 목록 불러오기
public class MatchfindService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		UserVO loginvo = (UserVO) session.getAttribute("user");
		String user_id = loginvo.getUser_id();
		MatchVO vo4 = new MatchVO();

		MatchVO vo = new MatchVO();
		vo.setUser_id(user_id);
		MatchDAO dao = new MatchDAO();
		List<MatchVO> result = dao.hopefind(vo);
		List<ErrandVO> errandList = new ArrayList<>();
		for (int i = 0; i < result.size(); i++) {
			int match = result.get(i).getErr_num();

			ErrandVO vo2 = new ErrandVO();
			vo2.setErr_num(match);

			ErrandDAO dao2 = new ErrandDAO();
			List<ErrandVO> result2 = dao2.matchfind(result.get(i).getErr_num());
			errandList.add(result2.get(0));
		}

		vo4.setUser_id(user_id);
		for (int i = 0; i < result.size(); i++) {
			vo4.setErr_num(errandList.get(i).getErr_num());
			MatchVO MatchYn = dao.matchStatusCheck(vo4);
			String Matchyn = MatchYn.getMatch_yn();
			ErrandVO vo3 = new ErrandVO();
			vo3.setErr_status(Matchyn);
			errandList.add(vo3);
		}
		if (errandList.isEmpty()) {
			out.print("false");
		} else {
			Gson gson = new Gson();
			String jsonResult = gson.toJson(errandList);
			out.print(jsonResult);
		}

		return null;

	}

}

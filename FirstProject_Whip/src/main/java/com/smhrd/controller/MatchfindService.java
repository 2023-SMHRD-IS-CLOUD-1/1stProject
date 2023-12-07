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

//심부름 신청 목록 불러오기
public class MatchfindService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		// 세션에 저장되어 있는 id 꺼내오기
		HttpSession session = request.getSession();
		UserVO loginvo = (UserVO) session.getAttribute("user");
		String user_id = loginvo.getUser_id();
		
		MatchVO vo = new MatchVO();
		vo.setUser_id(user_id);

		MatchDAO dao = new MatchDAO();
		List<MatchVO> result = dao.hopefind(vo);
		System.out.println("result"+result);
		List<ErrandVO> errandList = new ArrayList<>();
		for (int i = 0; i < result.size(); i++) {
			int match = result.get(i).getErr_num();
			System.out.println("num" + match);

			ErrandVO vo2 = new ErrandVO();
			vo2.setErr_num(match);
			
			ErrandDAO dao2 = new ErrandDAO();
			System.out.println("result2222");
			List<ErrandVO> result2 = dao2.matchfind(result.get(i).getErr_num());
			System.out.println("result2"+result2);
			errandList.add(result2.get(0));
			
		}if (result.isEmpty()) {
				out.print("false");
			} else {
				Gson gson = new Gson();
				String jsonResult = gson.toJson(errandList);
				System.out.println("출력" + jsonResult);
				out.print(jsonResult);
			}
		

		// Gson을 사용하여 JSON으로 변환
		return null;

	}

}

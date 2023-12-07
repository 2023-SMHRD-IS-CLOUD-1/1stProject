package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.MatchDAO;
import com.smhrd.model.MatchVO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 로그아웃 서비스
public class ErrMatchingViewService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String selectedNum1 = request.getParameter("selectedNum");
		int selectedNum = Integer.parseInt(selectedNum1);
		MatchDAO mdao = new MatchDAO();
		List<String> userList = mdao.MatchIdload(selectedNum);
		
		UserDAO dao = new UserDAO();
		List<UserVO> resultList = new ArrayList<UserVO>();
		List<UserVO> userInfo = null;
		for (int i = 0; i < userList.size(); i++) {
			userInfo = dao.MatchLoad(userList.get(i));
			resultList.add(userInfo.get(0));
		}
			
		PrintWriter out = response.getWriter();
		
		   if(resultList.isEmpty()) {
		         out.print("false");
		      }else {
		         Gson gson = new Gson();
		         String result = gson.toJson(resultList);
		         out.print(result);
		      }
		      return null;
	}

}

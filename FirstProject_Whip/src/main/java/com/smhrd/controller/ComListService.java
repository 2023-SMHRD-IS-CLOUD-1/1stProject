package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.ComDAO;
import com.smhrd.model.ComVO;

// 로그아웃 서비스
public class ComListService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		System.out.println("ajax 서비스 연결 확인");
		
		String thisPostNum1 = request.getParameter("thisPostNum");
		int thisPostNum = Integer.parseInt(thisPostNum1);
		System.out.println("222222222222222디스포스트넘 확인 : " + thisPostNum);
		ComDAO dao = new ComDAO();
		List<ComVO> resultList = dao.comLoad(thisPostNum);
		
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

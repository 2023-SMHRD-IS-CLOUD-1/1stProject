package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 로그아웃 서비스
public class PostNumService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PostDAO dao = new PostDAO();
		int result = dao.getPostNum();
		
		
		PrintWriter out = response.getWriter();
		
		   if(result == 0) {
		         out.print("false");
		      }else {
		         Gson gson = new Gson();
		         String result1 = gson.toJson(result);
		         out.print(result1);
		      }
		      return null;
	}

}

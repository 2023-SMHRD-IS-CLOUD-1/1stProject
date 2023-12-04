package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ManageDAO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 게시글 전체 갯수 가져오기
public class ManNumService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("111111111111");
		System.out.println("확인");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		ManageDAO dao = new ManageDAO();
		int result = dao.getManNum();
		
		
		PrintWriter out = response.getWriter();
		
		   if(result == 0) {
		         out.print("false");
		      }else {
		         Gson gson = new Gson();
		         String result1 = gson.toJson(result);
		         System.out.println(result1);
		         out.print(result1);
		      }
		      return null;
	}

}

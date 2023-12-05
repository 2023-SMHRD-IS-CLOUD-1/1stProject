package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.ErrandDAO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 게시글 전채 갯수 가져오기
public class ErrNumService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("111111111111");
		System.out.println("확인");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		ErrandDAO dao = new ErrandDAO();
		int result = dao.getErrNum();
		
		
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

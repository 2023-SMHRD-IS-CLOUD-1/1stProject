package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 로그아웃 서비스
public class ErrBoardService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(" 성공" + "22222222222222222222");
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		String selectedNum1 = request.getParameter("selectedNum");
		int selectedNum = Integer.parseInt(selectedNum1);
		System.out.println(selectedNum + "22222222222222222222");
		ErrandDAO dao = new ErrandDAO();
		List<ErrandVO> resultList = dao.errLoad(selectedNum);
		PrintWriter out = response.getWriter();
		
		   if(resultList.isEmpty()) {
		         out.print("false");
		      }else {
		         Gson gson = new Gson();
		         String result = gson.toJson(resultList);
		         System.out.println(result);
		         out.print(result);
		      }
		      return null;
	}

}

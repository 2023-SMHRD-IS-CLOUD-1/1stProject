package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 모두 불러오기
public class ErrselectService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 한글 인코딩 잡아주기
	    response.setContentType("text/html;charset=utf-8");
	    request.setCharacterEncoding("utf-8");
	    
		
		ErrandDAO dao = new ErrandDAO();
		List<ErrandVO> resultList = dao.selectErr();
		
		PrintWriter out = response.getWriter();
		
		if(resultList.isEmpty()) {
			out.print("false");
		}else {
			Gson gson = new Gson();
			String result = gson.toJson(resultList);
			System.out.println("1"+result);
			out.print(result);
		}
		return null;

	}

}

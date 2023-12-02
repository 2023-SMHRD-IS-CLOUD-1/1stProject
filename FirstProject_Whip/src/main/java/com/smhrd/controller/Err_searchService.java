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

// 심부름 검색 기능
public class Err_searchService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 한글 인코딩 잡아주기
	    response.setContentType("text/html;charset=utf-8");
	    request.setCharacterEncoding("utf-8");
	    
	    
	    String term = request.getParameter("searchTerm");
	    System.out.println(term);
	    String temp = request.getParameter("SearchCategory"); 
	    System.out.println(temp);
	    
	    ErrandVO vo = new ErrandVO();
	    PrintWriter out = response.getWriter();
	    if(temp.equals("err_name")) {
	    	System.out.println("제목");
	    	vo.setErr_name(term);
	    	
	    	 ErrandDAO dao = new ErrandDAO();
	 	    List<ErrandVO> result = dao.SearchErr1(vo);
	 	   if(result.isEmpty()) {
				out.print("false");
			}else {
				Gson gson = new Gson();
				String result1 = gson.toJson(result);
				System.out.println("err_name"+result1);
				out.print(result1);
			}
	    }else if (temp.equals("user_id")) {
	    	System.out.println("아이디");
	    	vo.setUser_id(term);
	    	 ErrandDAO dao = new ErrandDAO();
	 	    List<ErrandVO> result = dao.SearchErr2(vo);
	 	   if(result.isEmpty()) {
				out.print("false");
			}else {
				Gson gson = new Gson();
				String result2 = gson.toJson(result);
				System.out.println("user_id"+result2);
				out.print(result2);
			}
	    }
	    
	    
	    
	    return null;
	
	}
}

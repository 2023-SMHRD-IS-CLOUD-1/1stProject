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

// 심부름 글 상세보기 기능
public class Err_detailService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String temp = request.getParameter("clickedErrNum");
			int err_num = Integer.parseInt(temp);
			System.out.println(err_num);
			ErrandVO vo = new ErrandVO();
			vo.setErr_num(err_num);
			
			ErrandDAO dao = new ErrandDAO();
			ErrandVO result = dao.DetailErr(vo);
			if(result != null ) {
				System.out.println("성공");
				HttpSession session = request.getSession();
				session.setAttribute("errand", result);
				ErrandVO errand = (ErrandVO)session.getAttribute("errand");
			}
	    return null;
	
	}
}

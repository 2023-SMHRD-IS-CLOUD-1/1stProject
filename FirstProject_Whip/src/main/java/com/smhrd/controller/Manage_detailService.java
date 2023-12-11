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
import com.smhrd.model.ManageDAO;
import com.smhrd.model.ManageVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 글 상세보기 기능
public class Manage_detailService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String temp = request.getParameter("clickedErrNum");
		int management_post_num = Integer.parseInt(temp);
		ManageVO vo = new ManageVO();
		vo.setManagement_post_num(management_post_num);

		ManageDAO dao = new ManageDAO();
		ManageVO result = dao.manage_detail(vo);
		if (result != null) {
			HttpSession session = request.getSession();
			session.setAttribute("Manage", result);
			ManageVO Manage = (ManageVO) session.getAttribute("Manage");
			String title = Manage.getManagement_post_title();
		}
		return null;

	}
}

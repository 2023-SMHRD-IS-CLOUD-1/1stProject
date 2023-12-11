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
import com.smhrd.model.ManageDAO;
import com.smhrd.model.ManageVO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;

// 고객문의 게시판
public class ManBoardService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		String selectedNum1 = request.getParameter("selectedNum");
		int selectedNum = Integer.parseInt(selectedNum1);
		ManageDAO dao = new ManageDAO();
		List<ManageVO> resultList = dao.manage_sel(selectedNum);
		PrintWriter out = response.getWriter();

		if (resultList.isEmpty()) {
			out.print("false");
		} else {
			Gson gson = new Gson();
			String result = gson.toJson(resultList);
			out.print(result);
		}
		return null;
	}

}

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

// 게시글 검색
public class PostSearchService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");

		String postSearchFilter = request.getParameter("postSearchFilter");
		String searchWord = request.getParameter("searchWord");
		List<PostVO> resultList;
		PostDAO dao = new PostDAO();

		if (postSearchFilter.equals("post_title")) {
			resultList = dao.postSearch1(searchWord);
		} else {
			resultList = dao.postSearch2(searchWord);
		}

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

package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandVO;
import com.smhrd.model.FvErrDAO;
import com.smhrd.model.FvErrVO;
import com.smhrd.model.UserVO;

@WebServlet("/FvErr")
public class FvErrService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int favorite_err_num = Integer.parseInt(request.getParameter("favorite_err_num"));

		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();
		ErrandVO errandVO = (ErrandVO) session.getAttribute("errand");
		int err_num = errandVO.getErr_num();
		FvErrVO vo = new FvErrVO();
		vo.setErr_num(err_num);
		vo.setFavorite_err_num(favorite_err_num);

		FvErrDAO dao = new FvErrDAO();
		int row = dao.insertFvErr(vo);

		return null;

	}

}

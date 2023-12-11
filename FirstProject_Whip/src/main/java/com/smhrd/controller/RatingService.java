package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandVO;
import com.smhrd.model.RatingDAO;
import com.smhrd.model.RatingVO;
import com.smhrd.model.UserVO;

public class RatingService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int err_rating = Integer.parseInt(request.getParameter("err_rating"));

		HttpSession session = request.getSession();
		UserVO loginVO = (UserVO) session.getAttribute("user");
		String user_id = loginVO.getUser_id();
		ErrandVO errandVO = (ErrandVO) session.getAttribute("errand");
		int err_num = errandVO.getErr_num();

		RatingVO vo = new RatingVO();
		vo.setUser_id(user_id);
		vo.setErr_num(err_num);
		vo.setErr_rating(err_rating);

		RatingDAO dao = new RatingDAO();

		int row = dao.insertRating(vo);

		if (row > 0) {
			session.setAttribute("rating", vo);
		} else {

		}

		return null;
	}

}

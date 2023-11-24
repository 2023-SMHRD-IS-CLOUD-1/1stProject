package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.ErrandDAO;
import com.smhrd.model.ErrandVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 심부름 등록 기능
public class ErrmodifyService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");
		// 심부름 제목 수정
		String err_name = request.getParameter("err_name");
		System.out.println(err_name);
		// 심부름 카테고리 넘버 수정 -> 숫자로 변환 
		String temp = request.getParameter("err_category_num");
		int err_category_num = Integer.parseInt(temp);
//		System.out.println(err_category_num);
		// 심부름 내용 수정
		String err_content = request.getParameter("err_content");
		System.out.println(err_content);
		// 심부름 단가 수정 -> int 로 변경
		String temp1 = request.getParameter("err_price");
		int err_price = Integer.parseInt(temp1);
		System.out.println(err_price);

		// session에 저장된 id 정보 가져오기
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();

		// errandvo로 받아온 정보저장하기 id, 제목, 카테고리 넘버, 내용, 단가
		ErrandVO vo = new ErrandVO();
		vo.setUser_id(user_id);
		vo.setErr_name(err_name);
		vo.setErr_content(err_content);
		vo.setErr_category_num(err_category_num);
		vo.setErr_price(err_price);
//		
		ErrandDAO dao = new ErrandDAO();
//		// errupdate 기능 실행
		int row = dao.errmodify(vo);
//		
		if(row>0) {
//			// errand 라는 이름으로 저장
			session.setAttribute("errand", vo);
		} else {
			// 실패시
			System.out.println("실패");
		}
		return null;

	}

}

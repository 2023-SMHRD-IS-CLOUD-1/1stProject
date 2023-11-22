package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

public class UpdateService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 요청받은 데이터 꺼내오기(pw,tel,address)
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		// 2. session 안에 있는 email 꺼내오기
		// 2-1) session 꺼내오기
		HttpSession session = request.getSession();
		// 2-2) 안에 저장되어있는 사용자 로그인 정보 가져오기
		MemberVO loginVo = (MemberVO)session.getAttribute("member");	
		// 2-3) emain 정보만 가지고 오기
		String email = loginVo.getEmail();
		
		// 3. 데이터를 하나로 묶어주기
		// ** 반드시 새로운 자료형을 만들어서 하나로 묶어주자 !!! **
		MemberVO vo = new MemberVO();
		vo.setAddress(address);
		vo.setPw(pw);
		vo.setTel(tel);
		vo.setEmail(email);		
		
		// 4. DAO 생성하기
		DAO dao = new DAO();
		// 5. dao.update 기능을 사용해서 실제 db에 값을 변경하기
		int row = dao.update(vo);
		// row >> table안에서 영향을 받은 행의 개수
		// if >> 3개를 수정하면 3이라는 숫자가 돌아옴
		
		// 6. 변경 선공한다면, session안에 있는 데이터를 변경된 데이터로 바꾸기
		if (row > 0) {
			session.setAttribute("member", vo);
		}
		// 7. redirect 방식으로 main.jsp로 이동
		return "redirect:/Gomain.do";
	}

}

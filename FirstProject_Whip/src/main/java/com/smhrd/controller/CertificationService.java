package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

public class CertificationService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// flask에서 요청받은 json 형식의 데이터 가져오기
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		System.out.println("null값이 아니면 성공이다잇!" + "=>" + id + "     " + name);

		// 수정할 name, jumin을 받아와서 수정
		String user_name = request.getParameter("user_name");
		String user_jumin = request.getParameter("user_jumin");

		// session에 저장된 id 정보 가져오기
		HttpSession session = request.getSession();
		UserVO loginVo = (UserVO) session.getAttribute("user");
		String user_id = loginVo.getUser_id();
		
		// uservo로 받아온 정보 넘기기
		UserVO vo = new UserVO();
		vo.setUser_jumin(id);
		vo.setUser_name(name);
		
		UserDAO dao = new UserDAO();
		
		int row = dao.update(vo);
		// 성공
		if(row>0) {
			session.setAttribute("user",vo);
			// return 로그인 페이지
		}else {
		    System.out.println("null");
		    // return 다시시도해주세요 페이지
		}
		return null;
	}

}

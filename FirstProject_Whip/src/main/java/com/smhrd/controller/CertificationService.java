package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

@WebServlet("/Certification")
public class CertificationService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// flask에서 요청받은 json 형식의 데이터 가져오기 
		String user_jumin = request.getParameter("id");
		String user_name = request.getParameter("username");
		System.out.println(user_name + user_jumin);
		
		// session에 저장된 id 정보 가져오기 
		HttpSession session = request.getSession();
		UserVO loginVO = (UserVO)session.getAttribute("user");
		String user_id = loginVO.getUser_id();
		
		// uservo로 받아온 정보 넘기기
		UserVO vo = new UserVO();
		vo.setUser_jumin(user_jumin);
		vo.setUser_name(user_name);
		System.out.println("test"+"  "+user_name + user_jumin+"  ");
		
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

package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 일반 클래스로 만들어줌 --> POJO(Plain Old Java Object)
public class JoinService implements Command {
	// 회원가입 서비스
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// id, pw, name, gender, nick, jumin, phone, addr 받아서 가져오기
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		String user_gender = request.getParameter("user_gender");
		String user_nick = request.getParameter("user_nick");
		String user_jumin = request.getParameter("user_jumin");
		String user_phone = request.getParameter("user_phone");
		String user_addr1 = request.getParameter("user_addr1");
		//String user_birthdate = request.getParameter("user_birthdate");

       String userByear = user_jumin.substring(0, 2); // 0부터 1까지 추출 (년도 앞 2자리)
       String userBmonth = user_jumin.substring(2, 4); // 2부터 3까지 추출 (월)
       String userBday = user_jumin.substring(4, 6); // 4부터 5까지 추출 (일)
       String user_birthdate = userByear + "-" + userBmonth + "-" + userBday;
       System.out.println(user_birthdate);
       
       // uservo로 데이터 묶기
		UserVO vo = new UserVO();
		vo.setUser_id(user_id);
		vo.setUser_pw(user_pw);
		vo.setUser_name(user_name);
		vo.setUser_gender(user_gender);
		vo.setUser_nick(user_nick);
		vo.setUser_jumin(user_jumin);
		vo.setUser_phone(user_phone);
		vo.setUser_addr1(user_addr1);
		vo.setUser_birthdate(user_birthdate);

     UserDAO dao = new UserDAO();
     
      int row = dao.join(vo);
      
      // 성공시 
     if (row > 0) {
         request.setAttribute("user", vo);
     }
		return null;

	}
}
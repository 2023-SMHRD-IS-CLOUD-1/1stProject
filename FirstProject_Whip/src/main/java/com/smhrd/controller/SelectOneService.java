package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;


public class SelectOneService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("test");
		 // 세션에서 로그인한 사용자의 정보 가져오기
        HttpSession session = request.getSession();
        UserVO loginUser = (UserVO) session.getAttribute("user");
		
        // 만약 로그인한 사용자가 없다면 로그인 페이지로 이동
        if (loginUser == null) {
        	System.out.println("로그인한 사용자가 아님");
            return "main";
        }
		
		
		// 로그인한 사용자의 아이디를 기반으로 프로필 조회
        UserDAO userDAO = new UserDAO();
        UserVO userProfile = userDAO.selectById(loginUser.getUser_id());
		System.out.println(userProfile.getUser_name());
		// 조회된 프로필 정보를 request에 설정
        request.setAttribute("userProfile", userProfile);

        System.out.println("결과값 조회 >>" + userProfile);
        // 결과를 표시할 JSP 페이지로 이동
        return "profile";
		
	}

}

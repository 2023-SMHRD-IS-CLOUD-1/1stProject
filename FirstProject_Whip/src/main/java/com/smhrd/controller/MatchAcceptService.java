package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MatchDAO;
import com.smhrd.model.MatchVO;
import com.smhrd.model.UserDAO;
import com.smhrd.model.UserVO;

// 일반 클래스로 만들어줌 --> POJO(Plain Old Java Object)
public class MatchAcceptService implements Command {
   // 회원가입 서비스
   public String execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String userId = request.getParameter("userId");
      int errNum = Integer.parseInt(request.getParameter("errNum"));

      MatchVO vo = new MatchVO();
      vo.setUser_id(userId);
      vo.setErr_num(errNum);
      System.out.println("새 유저 아이디"+userId);
      System.out.println("대 유저 아이디"+errNum);
      
      MatchDAO dao = new MatchDAO();
      int row = dao.matchAccept1(vo);
      // 심부름 테이블 매칭 여부 수정
      dao.errMatchUpdate(vo);
//      dao.matchAccept2(vo2);
      
     
//      int row = dao.join(vo);
//      
//      // 성공시 
//     if (row > 0) {
//         request.setAttribute("user", vo);
//         // return join_success
//     } else {
//    	 // 실패시
//    	 // return 다시시도해주세요 페이지 -> main페이지로 이동
//     }
      return null;

   }
}
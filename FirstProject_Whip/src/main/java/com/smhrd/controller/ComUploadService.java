package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.smhrd.model.ComDAO;
import com.smhrd.model.ComVO;
import com.smhrd.model.UserVO;

// 심부름 등록 기능
public class ComUploadService implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	
		String user_id = request.getParameter("user_id");
		String thisPostNum1 =  request.getParameter("thisPostNum");
		String cmtContent = request.getParameter("cmtContent");
		int thisPostNum = Integer.parseInt(thisPostNum1);
		
		ComVO vo = new ComVO();
		vo.setUser_id(user_id);
		vo.setPost_num(thisPostNum);
		vo.setCmt_content(cmtContent);
		ComDAO dao = new ComDAO();
		int result = dao.comUpload(vo);
		
		return null;
	}

}

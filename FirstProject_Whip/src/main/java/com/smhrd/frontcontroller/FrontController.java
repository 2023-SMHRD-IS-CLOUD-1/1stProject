package com.smhrd.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.print.attribute.HashAttributeSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.w3c.dom.DOMStringList;

import com.smhrd.controller.Command;
import com.smhrd.controller.DeleteService;
import com.smhrd.controller.Err_detailService;
import com.smhrd.controller.Err_readService;
import com.smhrd.controller.Err_searchService;
import com.smhrd.controller.ErrdeleteService;
import com.smhrd.controller.ErrmodifyService;
import com.smhrd.controller.ErrselectService;
import com.smhrd.controller.ErrupdateService;
import com.smhrd.controller.FindService;
import com.smhrd.controller.FvErrService;
import com.smhrd.controller.FvPostService;
import com.smhrd.controller.JoinService;
import com.smhrd.controller.LoginService;
import com.smhrd.controller.LogoutService;
import com.smhrd.controller.PostBoardService;
import com.smhrd.controller.PostdeleteService;
import com.smhrd.controller.PostmodifyService;
import com.smhrd.controller.PostupdateService;
import com.smhrd.controller.RatingService;
import com.smhrd.controller.SelectOneService;
import com.smhrd.controller.UpdateService;


// * -> 모든 .do로 끝나는 url은 해당하는 FC로 들어온다.
@WebServlet("*.do")
// 모든 요청을 처리하는 servlet
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// key - value 형식으로 데이터를 저장
	// key >> 고유의 값(중복 허용 x) >> 요청 url
	// value >> 중복 허용함 >> 실행 시켜야하는 service POJO
	private HashMap<String, Command> map = null;

	@Override
	public void init(ServletConfig config) throws ServletException {

		// servlet이 실행되는 순간 url command map에 추가
		map = new HashMap<String, Command>();
		// 회원가입
		map.put("Join.do", new JoinService());
		map.put("Login.do", new LoginService());
		map.put("Logout.do", new LogoutService());
		map.put("Update.do", new UpdateService());
		map.put("Delete.do", new DeleteService());
		
		// id pw 찾기
		map.put("Find.do", new FindService());
		// 심부름
		map.put("Errupdate.do", new ErrupdateService());
		map.put("Errmodify.do", new ErrmodifyService());
		map.put("Errdelete.do", new ErrdeleteService());
		map.put("Errselect.do", new ErrselectService());
		map.put("Err_read.do", new Err_readService());
		map.put("Err_search.do", new Err_searchService());
		map.put("Err_detail.do", new Err_detailService());
		map.put("FvErr.do", new FvErrService());
		
		// 게시판
		map.put("Postupdate.do", new PostupdateService());
		map.put("Postmodify.do", new PostmodifyService());
		map.put("Postdelete.do", new PostdeleteService());
		map.put("PostBoard.do", new PostBoardService());
		map.put("FvPost.do", new FvPostService());
		
		// 평점
		map.put("Rating.do", new RatingService());
		
		// 자신의 프로필 보기
		map.put("SelectOne.do", new SelectOneService());
	}
		
		
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// FC의 역할
		// --> 모든 요청을 다 처리하는 Servlet
		// --> 요청이 무엇이냐에 따라 일반 클래스에게 일을 시키는 주체

		// ☆공통☆ 한글 인코딩
		request.setCharacterEncoding("UTF-8");

		// 1. 요청 url을 구분하기
		// 1-1) uri 가져오기
		String uri = request.getRequestURI();
		
		// 1-2) cp 가져오기
		String cp = request.getContextPath();
		
		System.out.println("URI: " + uri);
		System.out.println("CP: " + cp);
		// 1-3) 최종 요청 url을 잘라내기
		String finaluri = uri.substring(cp.length() + 1);
		System.out.println("Final URI: " + finaluri);

		// >> 모든 기능을 수행하고 최종적으로 이동해야하는 url을 담는 공간
		String path = null;
		Command com = null;
		
		// 2. 최종 요청 uri에 따라서 각각 일반 클래스 파일을 호출!
		if (finaluri.contains("Go")) {
			// Go + 파일명 + .do
			// --> 파일명만 추출해서 path 값을 만들기

			// Gomain.do -> main 추출
			path = finaluri.substring(2).replaceAll(".do", "");
			

		} else {
			// DB랑 연결해서 무언가 작업을 하고 싶을때!
			com = map.get(finaluri);
			path = com.execute(request, response);
		}
		// 3. 페이지 이동
		if (path == null) {
			// ajax로 통신이 들어왔을 때 필요한 코드
		} else if (path.contains("redirect:/")) {
			response.sendRedirect(path.substring(10));
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/" + path + ".jsp");
			rd.forward(request, response);
		}

	}

}

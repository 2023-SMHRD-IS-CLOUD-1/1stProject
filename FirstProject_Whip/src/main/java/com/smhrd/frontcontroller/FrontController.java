package com.smhrd.frontcontroller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.controller.CertificationService;
import com.smhrd.controller.ComListService;
import com.smhrd.controller.ComUploadService;
import com.smhrd.controller.Command;
import com.smhrd.controller.DeleteService;
import com.smhrd.controller.ErrBoardService;
import com.smhrd.controller.ErrMatchingViewService;
import com.smhrd.controller.ErrNumService;
import com.smhrd.controller.Err_detailService;
import com.smhrd.controller.Err_matchService;
import com.smhrd.controller.Err_readService;
import com.smhrd.controller.Err_search2Service;
import com.smhrd.controller.Err_searchService;
import com.smhrd.controller.ErrdeleteService;
import com.smhrd.controller.ErrmodifyService;
import com.smhrd.controller.ErrupdateService;
import com.smhrd.controller.FindService;
import com.smhrd.controller.FvErrService;
import com.smhrd.controller.FvPostService;
import com.smhrd.controller.IdUniqueCheckService;
import com.smhrd.controller.JoinService;
import com.smhrd.controller.LoginService;
import com.smhrd.controller.LogoutService;
import com.smhrd.controller.ManBoardService;
import com.smhrd.controller.ManNumService;
import com.smhrd.controller.Man_searchService;
import com.smhrd.controller.ManagePostService;
import com.smhrd.controller.Manage_answerService;
import com.smhrd.controller.Manage_detailService;
import com.smhrd.controller.Manage_modifyService;
import com.smhrd.controller.MatchAcceptService;
import com.smhrd.controller.MatchUnAcceptService;
import com.smhrd.controller.MatchfindService;
import com.smhrd.controller.PostBoardService;
import com.smhrd.controller.PostLikeService;
import com.smhrd.controller.PostNumService;
import com.smhrd.controller.PostReWriteService;
import com.smhrd.controller.PostReadService;
import com.smhrd.controller.PostSearchService;
import com.smhrd.controller.PostSendNumService;
import com.smhrd.controller.PostdeleteService;
import com.smhrd.controller.PostmodifyService;
import com.smhrd.controller.PostupdateService;
import com.smhrd.controller.PwFindService;
import com.smhrd.controller.RatingService;
import com.smhrd.controller.SelectOneService;
import com.smhrd.controller.UpdateService;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		map.put("IdUniqueCheck.do", new IdUniqueCheckService());
		// id pw 찾기
		map.put("Find.do", new FindService());
		map.put("PwFind.do", new PwFindService());
		// 심부름
		map.put("Errupdate.do", new ErrupdateService());
		map.put("Errmodify.do", new ErrmodifyService());
		map.put("Errdelete.do", new ErrdeleteService());
		map.put("Err_read.do", new Err_readService());
		map.put("Err_search.do", new Err_searchService());
		map.put("Err_search2.do", new Err_search2Service());
		map.put("Err_detail.do", new Err_detailService());
		map.put("FvErr.do", new FvErrService());
		map.put("ErrNum.do", new ErrNumService());
		map.put("ErrBoard.do", new ErrBoardService());
		// 댓글
		map.put("ComList.do", new ComListService());
		map.put("ComUpload.do", new ComUploadService());
		// 게시판
		map.put("Postupdate.do", new PostupdateService());
		map.put("Postmodify.do", new PostmodifyService());
		map.put("Postdelete.do", new PostdeleteService());
		map.put("PostBoard.do", new PostBoardService());
		map.put("PostRead.do", new PostReadService());
		map.put("PostNum.do", new PostNumService());
		map.put("FvPost.do", new FvPostService());
		map.put("PostSearch.do", new PostSearchService());
		map.put("PostLike.do", new PostLikeService());
		map.put("PostSendNum.do", new PostSendNumService());
		map.put("PostReWrite.do", new PostReWriteService());
		// 평점
		map.put("Rating.do", new RatingService());
		// 자신의 프로필 보기
		map.put("SelectOne.do", new SelectOneService());
		// 본인 인증 서비스
		map.put("Certification.do", new CertificationService());
		// 고객문의함
		map.put("ManagePost.do", new ManagePostService());
		map.put("Manage_detail.do", new Manage_detailService());
		map.put("Manage_modify.do", new Manage_modifyService());
		map.put("ManBoard.do", new ManBoardService());
		map.put("ManNum.do", new ManNumService());
		map.put("Manage_answer.do", new Manage_answerService());
		map.put("Man_search.do", new Man_searchService());

		map.put("Err_match.do", new Err_matchService());
		map.put("Matchfind.do", new MatchfindService());
		// 매칭
		map.put("ErrMatchingView.do", new ErrMatchingViewService());
		// 심부름 신청 수락/거절
		map.put("MatchAccept.do", new MatchAcceptService());
		map.put("MatchUnAccept.do", new MatchUnAcceptService());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String uri = request.getRequestURI();

		String cp = request.getContextPath();

		String finaluri = uri.substring(cp.length() + 1);

		String path = null;
		Command com = null;

		if (finaluri.contains("Go")) {
			path = finaluri.substring(2).replaceAll(".do", "");
		} else {
			com = map.get(finaluri);
			path = com.execute(request, response);
		}
		if (path == null) {
		} else if (path.contains("redirect:/")) {
			response.sendRedirect(path.substring(10));
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/" + path + ".jsp");
			rd.forward(request, response);
		}

	}

}

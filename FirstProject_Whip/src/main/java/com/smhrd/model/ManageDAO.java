package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ManageDAO {
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	// 심부름 글 등록
	public int manageupdate(ManageVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("manageupdate",vo);
		sqlSession.close();
		return row;
	}
	// 심부름 글 목록 출력
	public List<ManageVO> manage_sel(int selectedNum) {
		System.out.println("성공");
		SqlSession sqlSession = factory.openSession();
		List<ManageVO> result = sqlSession.selectList("manage_sel",selectedNum);
		sqlSession.close();
		return result;
	}
	// 심부름 글 상세보기
	public ManageVO manage_detail(ManageVO vo) {
		SqlSession sqlSession = factory.openSession();
		ManageVO result = sqlSession.selectOne("manage_detail",vo);
		sqlSession.close();
		return result;
	}
	// 심부름 글 수정
	public int manage_modify(ManageVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("manage_modify",vo);
		sqlSession.close();
		return row;
	}
	// 심부름 글 갯수 자르기
	public int getManNum() {
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.selectOne("getManNum");
		return result;
	}
	// 답변 등록
		public int manage_answer(ManageVO vo) {
			SqlSession sqlSession = factory.openSession(true);
			int row= sqlSession.update("manage_answer",vo);
			sqlSession.close();
			return row;
		}
		// 검색 기능 제목
		public List<ManageVO> SearchMan1(ManageVO vo) {
			SqlSession sqlSession = factory.openSession();
			List<ManageVO> result = sqlSession.selectList("searchman1",vo);
			sqlSession.close();
			return result;
		}
		// 검색 기능 사용자
		public List<ManageVO> SearchMan2(ManageVO vo) {
			SqlSession sqlSession = factory.openSession();
			List<ManageVO> result = sqlSession.selectList("searchman2",vo);
			sqlSession.close();
			return result;
		}
}

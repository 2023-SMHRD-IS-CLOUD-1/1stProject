package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FvErrDAO {
	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	// 심부름 즐겨찾기 추가하는 세션
	public int insertFvErr(FvErrVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("insertFvErr", vo);
		sqlSession.close();
		
		return row;
	}

	// 심부름 즐겨찾기 목록 불러오는 세션
	 public List<FvErrVO> selectFvErrList(FvErrVO vo) {
	        try (SqlSession sqlSession = factory.openSession()) {
	            return sqlSession.selectList("selectFvErrList", vo);
	        }
	        
	        
	 }
}

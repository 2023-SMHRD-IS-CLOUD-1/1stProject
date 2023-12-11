package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class FvPostDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	// 게시글 즐겨찾기 추가하는 세션
	public int insertFvPost(FvPostVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("insertFvPost", vo);
		sqlSession.close();
		return row;
	}

	// 게시글 즐겨찾기 목록 불러오는 세션
	public List<FvPostVO> selectFvPostList(FvPostVO vo) {
		try (SqlSession sqlSession = factory.openSession()) {
			return sqlSession.selectList("selectFvPostList", vo);
		}

	}
}
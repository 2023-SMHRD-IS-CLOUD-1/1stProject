package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class RatingDAO {
	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public int insertRating(RatingVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("insertRating", vo);
		sqlSession.close();

		return row;
	}

	public int ratingModify(RatingVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("ratingmodify", vo);
		sqlSession.close();

		return row;
	}

	public int ratingDelete(UserVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.selectOne("ratingdelete", vo);
		sqlSession.close();
		return row;
	}

}

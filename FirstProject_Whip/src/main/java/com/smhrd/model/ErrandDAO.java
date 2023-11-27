package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ErrandDAO {
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	public int errupdate(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("errupdate",vo);
		sqlSession.close();
		
		return row;
	}

	public int errmodify(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("errmodify",vo);
		sqlSession.close();
		return row;
	}

	public int errdelete(UserVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.selectOne("errmodify",vo);
		sqlSession.close();
		return row;
	}
	
}

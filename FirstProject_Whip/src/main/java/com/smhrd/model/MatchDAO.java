package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MatchDAO {
	
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	public int matchUpdate(MatchVO vo) {
		SqlSession sqlSession =  factory.openSession(true);
		int row = sqlSession.insert("matupdate",vo);
		sqlSession.close();
		return row;
	}
//  신청인을 찾아라 !!!!!!!!!!!
	public List<MatchVO> hopefind(MatchVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<MatchVO> result = sqlSession.selectList("hopefind", vo);
		sqlSession.close();
		return result;
	}
}

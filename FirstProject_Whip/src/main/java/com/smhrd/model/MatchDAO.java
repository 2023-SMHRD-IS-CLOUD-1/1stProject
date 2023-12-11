package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class MatchDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public int matchUpdate(MatchVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("matupdate", vo);
		sqlSession.close();
		return row;
	}

	public List<MatchVO> ynfind(MatchVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<MatchVO> result = sqlSession.selectList("ynfind", vo);
		sqlSession.close();
		return result;
	}

	public List<MatchVO> hopefind(MatchVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<MatchVO> result = sqlSession.selectList("hopefind", vo);
		sqlSession.close();
		return result;
	}

	public int matchAccept1(MatchVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("MatchAccept", vo);
		sqlSession.close();
		return row;
	}

	public int errMatchUpdate(MatchVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("errMatchUpdate", vo);
		sqlSession.close();
		return row;
	}

	public int matchUnAccept1(MatchVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("matchUnAccept", vo);
		sqlSession.close();
		return row;
	}

	public List<String> MatchIdload(int selectedNum) {
		SqlSession sqlSession = factory.openSession(true);
		List<String> result = sqlSession.selectList("matchIdload", selectedNum);
		sqlSession.close();
		return result;
	}

	public MatchVO matchStatusCheck(MatchVO vo) {
		SqlSession sqlSession = factory.openSession();
		MatchVO result = sqlSession.selectOne("matchStatusCheck", vo);
		sqlSession.close();
		return result;
	}
}

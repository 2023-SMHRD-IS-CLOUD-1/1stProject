package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ErrandDAO {
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	public int errupdate(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("errupdate",vo);
		sqlSession.close();
		if(row>0) {
			sqlSession.commit();
			sqlSession.close();
		}else {
			sqlSession.rollback();
		}
		return row;
	}

	public int errmodify(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("errmodify",vo);
		sqlSession.close();
		return row;
	}

	public int errdelete(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.delete("errdelete", vo);
		if(row>0) {
			sqlSession.commit();
			sqlSession.close();
		}else {
			sqlSession.rollback();
		}
		return row;
	}

	public List<ErrandVO> selectErr() {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> resultlist = sqlSession.selectList("selecterr");
		sqlSession.close();
		return resultlist;
	}

	public List<ErrandVO> ReadErr(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("readerr",vo);
		sqlSession.close();
		return result;
	}
	// 심부름 제목을 토대로 검색
	public List<ErrandVO> SearchErr1(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("searcherr1",vo);
		sqlSession.close();
		return result;
	}
	// 사용자 id를 토대로 검색
	public List<ErrandVO> SearchErr2(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("searcherr2",vo);
		sqlSession.close();
		return result;
	}

	public ErrandVO DetailErr(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		ErrandVO result = sqlSession.selectOne("err_detail",vo);
		sqlSession.close();
		
		return result;
	}
	
}

package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ErrandDAO {
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	// 심부름 등록 기능
	public int errupdate(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("errupdate",vo);
		sqlSession.close();
		
		return row;
	}
	// 심부름 수정 기능
	public int errmodify(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("errmodify",vo);
		sqlSession.close();
		return row;
	}
	// 심부름 삭제 기능
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
	
}

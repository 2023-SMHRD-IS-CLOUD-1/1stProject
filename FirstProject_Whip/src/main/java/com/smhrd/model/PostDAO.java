package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class PostDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	// 글 등록 하는 기능
	public int postupdate(PostVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("postupdate",vo);
		sqlSession.close();
		
		return row;
	}
	// 글 수정하는 기능
	public int postmodify(PostVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("postmodify",vo);
		sqlSession.close();
		
		return row;
	}
	public int postdelete(PostVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.delete("postdelete", vo);
		if(row>0) {
			sqlSession.commit();
			sqlSession.close();
		}else {
			sqlSession.rollback();
		}
		return row;
		
	}

}

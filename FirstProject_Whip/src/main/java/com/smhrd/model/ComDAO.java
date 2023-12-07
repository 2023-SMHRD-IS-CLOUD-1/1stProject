package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ComDAO {

	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public List<ComVO> comLoad(int thisPostNum) {
		
		SqlSession sqlSession = factory.openSession(true);
		List<ComVO> result = sqlSession.selectList("comLoad", thisPostNum);
		sqlSession.close();
		
		return result;
	}

	public int comUpload(ComVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("comUPload", vo);
		sqlSession.close();
		
		return result;
	}
		

}
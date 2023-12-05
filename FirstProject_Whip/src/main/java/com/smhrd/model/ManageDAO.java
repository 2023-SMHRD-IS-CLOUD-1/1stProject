package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ManageDAO {
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	public int manageupdate(ManageVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("manageupdate",vo);
		sqlSession.close();
		return row;
	}
	public List<ManageVO> manage_sel(int selectedNum) {
		System.out.println("성공");
		SqlSession sqlSession = factory.openSession();
		List<ManageVO> result = sqlSession.selectList("manage_sel",selectedNum);
		sqlSession.close();
		return result;
	}
	public ManageVO manage_detail(ManageVO vo) {
		SqlSession sqlSession = factory.openSession();
		ManageVO result = sqlSession.selectOne("manage_detail",vo);
		sqlSession.close();
		return result;
	}
	public int manage_modify(ManageVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("manage_modify",vo);
		sqlSession.close();
		return row;
	}
	
	public int getManNum() {
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.selectOne("getManNum");
		return result;
	}
}

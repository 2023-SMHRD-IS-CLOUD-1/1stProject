package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserDAO {
	// 회원 관련된 모든 기능 -> 회원가입, 로그인, 회원정보 수정 , 회원탈퇴

	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	
	// 회원가입 기능
	public int join(UserVO vo) {
		SqlSession sqlSession = factory.openSession(true);	
		int	row = sqlSession.insert("join", vo);
			sqlSession.close();	
		return row;
	}	
	// 로그인 기능
	public UserVO login(UserVO vo) {

		SqlSession sqlSession = factory.openSession(true);

		UserVO result = sqlSession.selectOne("login", vo);

		sqlSession.close();

		return result;
	}
	// 회원 수정 기능
	
	public int update(UserVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("update",vo);
		
		sqlSession.close();
		return row;
	}
	// 회원 탈퇴 기능
	public int delete(UserVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.delete("delete", vo);
		if(row>0) {
			sqlSession.commit();
			sqlSession.close();
		}else {
			sqlSession.rollback();
		}
		return row;
	}
	
	// 사용자의 프로필 보기 기능(자기 프로필 보기)
	public UserVO selectById(String userId) {
        try (SqlSession sqlSession = factory.openSession(true)) {
            return sqlSession.selectOne("selectById", userId);
        }
    }
	public UserVO find(UserVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		UserVO result = sqlSession.selectOne("find",vo);
		sqlSession.close();
		return result;
		
	}
		
	}
	
	
	
	


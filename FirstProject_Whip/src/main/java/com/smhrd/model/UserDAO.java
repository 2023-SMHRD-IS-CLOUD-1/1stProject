package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserDAO {

	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory = SqlSessionManager.getFactory();

	public int join(UserVO vo) {
		// (1) 연결객체(sqlsession, connection)를 빌려오기
		SqlSession sqlSession = factory.openSession(true);
		// (2) 연결객체를 사용해서 어떤 sql구문을 실행
		// -------> sql구문 : Mapper.xml파일 안에 있음
	
		
		int	row = sqlSession.insert("join", vo);
		
	
			// (3) 연결객체 반납
			sqlSession.close();
		
		return row;
	}	
	
	public UserVO login(UserVO vo) {

		SqlSession sqlSession = factory.openSession(true);

		UserVO result = sqlSession.selectOne("login", vo);
		// select를 수핵하고 나면 리턴타입 >> T
		// <T> : 제네릭 기법
		// 클래스 내부에서 사용하게 될 자료형을 외부에서 지정하는 기법
		// 만약 리턴타입이 Object라면 우측항에 강제형변환(다운캐스팅)해줘야함.

		sqlSession.close();

		return result;
	}

	public UserVO update(UserVO vo) {
		SqlSession sqlSession = factory.openSession();
		UserVO result = sqlSession.selectOne("update", vo);
		sqlSession.close();
		return result;
	}

	public int delete(UserVO vo) {
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.selectOne("delete", vo);
		sqlSession.close();
		return result;
	}
	
	
}

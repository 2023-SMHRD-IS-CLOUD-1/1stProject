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
		int row = 0;
		try {
			row = sqlSession.insert("join", vo);
		} catch (Exception e) {
			System.out.println("넘어가나???");
		}finally {
			// (3) 연결객체 반납
			sqlSession.close();
		}
		return row;
	}

		
	public int update(UserVO vo) {
		
		// 1. session 빌려오기
		SqlSession sqlSession = factory.openSession(true);
		// 2. session 사용하기
		int result = sqlSession.update("update", vo);
		// 3. session 반납
		sqlSession.close();
		// 4. 결과값 출력
		return result;
	}
	
	public List<UserVO> selectAll() {

		// 1. session 빌려오기
		SqlSession sqlSession = factory.openSession();

		// 2. session 사용하기(select값 여러개)
		List<UserVO> result = sqlSession.selectList("selectAll");
		// statement --> Mapper 파일 안쪽에 각각의 태그들의 id 지칭, 메소드 이름과 동일하게 일치시켜주기
		// error 중 Mapped statement ~~~ --> Mapper 파일 태그 id 중복저의 됐을 때 나오는 에러
		// 여러 정보를 하나로 묶어서 표현하기 --> 1) 객체배열 2) ArrayList --> 크기가 가변적인 ArrayList가 적합.
		// >> ArrayList의 부모클래스 격인 List 형태로 리턴

		// 3. session 반납하기
		sqlSession.close();

		// 4. 조회한 결과값 반환
		return result;
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
	
	public UserVO emailCheck(UserVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		
		UserVO result = sqlSession.selectOne("emailCheck", vo);
			
		sqlSession.close();
		
		return result;
	}

}

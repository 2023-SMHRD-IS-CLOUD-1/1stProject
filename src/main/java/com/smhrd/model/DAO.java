package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class DAO {
	// 1) SqlSession을 가져올 수 있는 SqlSessionFactory 생성
	private SqlSessionFactory factory= SqlSessionManager.getFactory();
	

	public int join(MemberVO vo) {
		// (1) 연결객체(sqlsession, connection)를 빌려오기
		SqlSession sqlSession= factory.openSession(true);
		
		// (2) 연결객체를 사용해서 어떤 sql구문을 실행
		// ---> sql구문 : Mapper.xml파일 안에 있음
		int row = sqlSession.insert("join", vo);
		
		// (3) 연결객체 반납
		sqlSession.close();
		return row;
	}
		public MemberVO login(MemberVO vo) {
			// 1.sqlsession꺼내오기
			SqlSession sqlSession= factory.openSession();
			// 2. session사용하기
			MemberVO result = sqlSession.selectOne("login", vo);
			// select를 수행하고 나면 리턴타입 >> T
			// <T> : 제네릭 기법
			// 클래스 내부에서 사용하게 될 자료형을 외부에서 지정하는 기법
			// 만약 리턴타입이 Object였다면, 우리는 결과값을 강제 형변환 해줘야 하지만.
			// T 형식으로 되돌아오기 때문에 강제형변환(다운캐스팅)을 해줄 필요가 없다!
			
			// 3.  session반납하기
			sqlSession.close();
			// 4. 결과값 반환
			return result;
		}
		public List<MemberVO> selectAll() {
			// 1. session 빌려오기
			SqlSession sqlSession = factory.openSession();
			// 2. session 사용하기 (select 여러개값)
			// statement ---> Mapper 파일 안쪽에 각각의 태그들의 id 지칭
			// error >> Mapped statement ~~
			// ---> mapper 파일 태그 id가 중복으로 정의
			 List<MemberVO> resultList = sqlSession.selectList("selectAll");// <-- 메소드 이름으로 넣기 
			 // MemberVO -> 한명에 대한 정보를 표현할 수 있는 type
			 // 여러명의 정보를 하나로 묶어서 표현해야함
			 // (1) 객체 배열 (2) ArrayList
			 // --> 크기가 가변적인 ArrayList가 우리에게 적합 !!
			 // --> ArratList의 부모클래스 격인 List 형태로 리턴은 받아옴 !
			 
			 // 3. session 반납하기
			 sqlSession.close();
			 // 4. 조회한 결과값 반환
			 return resultList;
		}
		public int update(MemberVO vo) {
			// 1. session 빌려오기
			SqlSession sqlSession = factory.openSession(true);
			// 2. session 사용하기
			int row = sqlSession.update("update",vo);
			// 3. session 반납하기
			sqlSession.close();
			// 4. 결과값 반환
			return row;
		}
	
			
		
		public String emailCheck(String receive_email) {
			SqlSession sqlSession = factory.openSession();
			 String result = sqlSession.selectOne("emailCheck",receive_email);
			sqlSession.close();
			return result;
		}

}

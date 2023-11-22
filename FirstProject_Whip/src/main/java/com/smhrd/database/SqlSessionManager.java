package com.smhrd.database;

import java.io.IOException;
import java.io.InputStream;
// org.apache.ibatis >> 기본 패키지가 아니라 mybatis library에서 제공해주고 있는 패키지
// import 잘 안되면 mybatis lib가 잘 가져와 졌는지 확인하기!!
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	public static SqlSessionFactory sqlSessionFactory;
	
	// 객체의 이름을 부르는 순간 바로 실행되는 코드
	// >> 생성자와 비슷한 역할인데, java 실행되자마자 가장 먼저 동작하게 하기 위해 static
	static {
		String resource = "com/smhrd/database/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// sqlSessionFactory라는 객체를 리턴해주는 메소드
	// SqlSessionFactory == ConnectionPool
	// SqlSessionFactory == Connection(SQL 구문 동작시킬 수 있는)
	public static SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}
	
	
}

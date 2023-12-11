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

	static {
		String resource = "com/smhrd/database/mybatis-config.xml";
		InputStream inputStream;
		try {
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static SqlSessionFactory getFactory() {
		return sqlSessionFactory;
	}

}

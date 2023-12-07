package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.javassist.compiler.ast.Member;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ErrandDAO {
	private SqlSessionFactory factory = SqlSessionManager.getFactory();
	
	public int errupdate(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.insert("errupdate",vo);
		sqlSession.close();
		return row;
	}

	public int errmodify(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.update("errmodify",vo);
		sqlSession.close();
		return row;
	}

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
	
	//심부름 카테고리 별 목록 불러오기
	public List<ErrandVO> ReadErr(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("readerr",vo);
		sqlSession.close();
		return result;
	}
	// 심부름 제목을 토대로 검색
	public List<ErrandVO> SearchErr1(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("searcherr1",vo);
		sqlSession.close();
		return result;
	}
	// 사용자 id를 토대로 검색
	public List<ErrandVO> SearchErr2(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("searcherr2",vo);
		sqlSession.close();
		return result;
	}
	//심부름 글 상세 보기
	public ErrandVO DetailErr(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		ErrandVO result = sqlSession.selectOne("err_detail",vo);
		sqlSession.close();
		
		return result;
	}
	// 게시글 불러와서 목록 띄워주는 기능
	public List<ErrandVO> errLoad(int selectedNum) {
		SqlSession sqlSession = factory.openSession(true);
		List<ErrandVO> result = sqlSession.selectList("errLoad",selectedNum);
		sqlSession.close();
		return result;
	}
	// 게시글 전체 개수 가져오는 기능 
	public int getErrNum() {
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.selectOne("getErrNum");
		return result;
	}
	// 심부름 찾기
	public List<ErrandVO> matchfind(int err_num) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("matchfind",err_num);
		sqlSession.close();
		return result;
	}
	// 사용자 아이디와 일치하는 것만 검색
	public List<ErrandVO> SearchErr3(ErrandVO vo) {
		SqlSession sqlSession = factory.openSession();
		List<ErrandVO> result = sqlSession.selectList("searcherr3",vo);
		sqlSession.close();
		return result;
	}
}

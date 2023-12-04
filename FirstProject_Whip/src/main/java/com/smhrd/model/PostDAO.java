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
	// 게시글 삭제하는 기능 
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
	
	// 게시글 불러와서 목록 띄워주는 기능 
	public List<PostVO> postLoad(int selectedNum) {
		
		SqlSession sqlSession = factory.openSession(true);
		List<PostVO> result = sqlSession.selectList("postLoad", selectedNum);
		sqlSession.close();
		
		return result;
	}

	// 게시글 클릭하면 내용 띄워주는 기능 
	public PostVO postContentLoad(PostVO vo) {
		SqlSession sqlSession = factory.openSession();
		PostVO result = sqlSession.selectOne("postContentLoad",vo);
		sqlSession.close();
		
		return result;
	}
	
	// 게시글 클릭했을 때 조회수 늘려주는 기능 
	public void increasePostViews(PostVO vo) {
		SqlSession sqlSession = factory.openSession(true);
		sqlSession.update("increasePostViews", vo);
		sqlSession.close();
	}
	
	// 게시글 전채 갯수 가져오는 기능 
	public int getPostNum() {
		SqlSession sqlSession = factory.openSession();
		int result = sqlSession.selectOne("getPostNum");
		return result;
	}
}
package com.smhrd.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public int postdelete(int post_num) {
		SqlSession sqlSession = factory.openSession(true);
		int row = sqlSession.delete("postdelete", post_num);
		sqlSession.close();
		
		return row;
	}
	// 작성돼 있는 글번호, 제목, 내용 가져오기
	public PostVO getPostInfo(int post_num) {
		SqlSession sqlSession = factory.openSession(true);
		PostVO result = sqlSession.selectOne("getPostInfo", post_num);
		sqlSession.close();

		return result;
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
	
	// 게시글 제목검색 기능
	public List<PostVO> postSearch1(String searchWord) {
		SqlSession sqlSession = factory.openSession(true);
		List<PostVO> result = sqlSession.selectList("postSearch1", searchWord);
		return result;
	}
	// 게시글 작성자검색 기능
	public List<PostVO> postSearch2(String searchWord) {
		SqlSession sqlSession = factory.openSession(true);
		List<PostVO> result = sqlSession.selectList("postSearch2", searchWord);
		return result;
	}
	// 게시글에 좋아요 눌렀는지 여부
	public int checkPostLike(int post_num, String user_id) {
		SqlSession sqlSession = factory.openSession(true);
		Map<String, Object> params = new HashMap<>();
	    params.put("post_num", post_num);
	    params.put("user_id", user_id);
	    int result = sqlSession.selectOne("checkPostLike", params);
		return result;
	}
	// 좋아요 눌렀으면 좋아요 숫자 -1 
	public void decreaseLikes(int post_num) {
		SqlSession sqlSession = factory.openSession(true);
		sqlSession.update("decreaseLikes", post_num);
		sqlSession.close();
	}
	// 좋아요 안눌렀으면 좋아요 숫자 +1
	public void increaseLikes(int post_num) {
		SqlSession sqlSession = factory.openSession(true);
		sqlSession.update("increaseLikes", post_num);
		sqlSession.close();
	}
	// 좋아요 눌렀을 때 이미 있으면 좋아요 테이블에서 삭제
	public void deleteLike(int post_num, String user_id) {
		SqlSession sqlSession = factory.openSession(true);
		Map<String, Object> params = new HashMap<>();
		params.put("post_num", post_num);
	    params.put("user_id", user_id);
	    sqlSession.delete("deleteLike", params);
	    sqlSession.close();
	}
	// 좋아요 눌렀을 때 없으면 좋아요 테이블에 추가
	public void updateLike(int post_num, String user_id) {
		SqlSession sqlSession = factory.openSession(true);
		Map<String, Object> params = new HashMap<>();
		params.put("post_num", post_num);
	    params.put("user_id", user_id);
	    sqlSession.insert("updateLike",params);
	    sqlSession.close();
	}
	
	
	
	
	
	
}
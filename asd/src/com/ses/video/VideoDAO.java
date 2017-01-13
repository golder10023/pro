package com.ses.video;

import java.util.List;
import org.apache.ibatis.session.SqlSession;

import com.ses.vcomment.VcommentVO;

public class VideoDAO {

	//private SqlSession sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
	SqlSession sqlSession;
	
	
	public List<VideoVO> vlist() {
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		List<VideoVO> vlist = sqlSession.selectList("vlist");
		sqlSession.close();
		return vlist;
	}

	public void vupload(VideoVO vupload) {
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		try {
			System.out.println(vupload);
			if(vupload.getUser_m().equals("soru")){
				vupload.setVfront("[SORU]");
				sqlSession.insert("vupload", vupload);
			} else if(vupload.getUser_m().equals("hige")){
				vupload.setVfront("[HIGE]");
				sqlSession.insert("vupload", vupload); 
			} else {
				vupload.setVfront("[GOLDER1023]");
				sqlSession.insert("vupload", vupload); 
			}
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
	}

	public VideoVO vread(int videonum) {
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		VideoVO videoVO = new VideoVO();
		try {
			videoVO = sqlSession.selectOne("vread", videonum);
			increadseVhit(videonum);
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
		return videoVO;
	}

	public void increadseVhit(int videonum) {
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		try {
			sqlSession.update("increasevhit", videonum);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
	}

	public void vmodify(VideoVO videoVO) {
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		try {
			sqlSession.update("vmodify", videoVO);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
	}

	public void vdelete(int videonum) {
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		try {
			sqlSession.delete("vdelete", videonum);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		} finally {
			sqlSession.close();
		}
	}

	public void vlike(int videonum) {
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		try {
			sqlSession.update("vlike", videonum);
			sqlSession.commit();
		} catch (Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}
	}

	public List<VcommentVO> vcomment(VideoVO videoVO) {
		
		System.out.println(videoVO.getVideonum());
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		List<VcommentVO> vlist = null;
		try{
			vlist = sqlSession.selectList("vcomment", videoVO.getVideonum());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vlist;
	}
	
	public List<VideoVO>top3(){
		sqlSession = CreateSqlSession.getSqlSessionFactory().openSession();
		List<VideoVO> top = null;
		try{
			top = sqlSession.selectList("top");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return top;
		
	}

}

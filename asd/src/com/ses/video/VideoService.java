package com.ses.video;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import com.ses.vcomment.VcommentVO;



public class VideoService {

	VideoDAO videoDAO = new VideoDAO();
	
	
	public List<VideoVO> vlist() {
		return videoDAO.vlist();
	}


	public VideoVO vread(VideoVO videoVO) {
		int videonum = videoVO.getVideonum();
		return videoDAO.vread(videonum);
	}


	public void vdelete(VideoVO videoVO) {
		int videonum = videoVO.getVideonum();
		videoDAO.vdelete(videonum);
	}


	public VideoVO vlike(VideoVO videoVO) {
		int videonum = videoVO.getVideonum();
		 videoDAO.vlike(videonum);
		 return videoDAO.vread(videonum);
	}


	public List<VcommentVO> vcomment(VideoVO videoVO) {
		return videoDAO.vcomment(videoVO);
	}

	public List<VideoVO>top3(){
		return videoDAO.top3();
		
	}

}

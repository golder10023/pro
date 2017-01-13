package com.ses.video;

import java.io.File;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class UploadAction extends ActionSupport implements ModelDriven<VideoVO>, Preparable {
	private File data;		//동영상
	private String dataFileName;
	private File data2;		//이미지
	private String data2FileName;

	private VideoVO videoVO;
	private VideoService service;

	public String vupload() {
		UploadService service = new UploadService();
		service.vupload(data, dataFileName, videoVO, data2, data2FileName);
		return SUCCESS;
	}
	
	public String vmodify() {
		UploadService service = new UploadService();
		service.vmodify(data, dataFileName, videoVO, data2, data2FileName);
		return SUCCESS;
	}


	public File getData() {
		return data;
	}

	public VideoVO getVideoVO() {
		return videoVO;
	}

	public void setVideoVO(VideoVO videoVO) {
		this.videoVO = videoVO;
	}

	public void setData(File data) {
		this.data = data;
	}

	public String getDataFileName() {
		return dataFileName;
	}

	public void setDataFileName(String dataFileName) {
		this.dataFileName = dataFileName;
	}

	@Override
	public void prepare() throws Exception {
		service = new VideoService();
		videoVO = new VideoVO();
	}

	@Override
	public VideoVO getModel() {
		return videoVO;
	}

	public File getData2() {
		return data2;
	}

	public void setData2(File data2) {
		this.data2 = data2;
	}

	public String getData2FileName() {
		return data2FileName;
	}

	public void setData2FileName(String data2FileName) {
		this.data2FileName = data2FileName;
	}
}
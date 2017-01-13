package com.ses.video;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.swing.plaf.synth.SynthSeparatorUI;

public class UploadService {

	VideoDAO videoDAO = new VideoDAO();

	public void vupload(File data, String dataFileName, VideoVO videoVO, File data2, String data2FileName) { // 동영상
		System.out.println("업로드 서버");																										// 저장용
		String path1 = "C:/work/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/asd/movie/";
		String path2 = "../movie/";
		String path3 = "C:/work/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/asd/img/";
		String path4 = "../img/";

		long time = System.currentTimeMillis();

		String FileName = time + dataFileName;
		String pathp = path2 + FileName;
		videoVO.setVlink(pathp);

		try (FileInputStream fis = new FileInputStream(data);
				BufferedInputStream bis = new BufferedInputStream(fis);
				FileOutputStream fos1 = new FileOutputStream(path1 + FileName);
				BufferedOutputStream bos1 = new BufferedOutputStream(fos1);) {
			int temp = -1;
			while ((temp = bis.read()) != -1) {
				bos1.write(temp);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		String FileName2 = time + data2FileName;
		String pathp2 = path4 + FileName2;
		videoVO.setVimg(pathp2);

		try (FileInputStream fis = new FileInputStream(data2);
				BufferedInputStream bis = new BufferedInputStream(fis);
				FileOutputStream fos1 = new FileOutputStream(path3 + FileName2);
				BufferedOutputStream bos1 = new BufferedOutputStream(fos1);) {
			int temp = -1;
			while ((temp = bis.read()) != -1) {
				bos1.write(temp);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}

		videoDAO.vupload(videoVO);
	}

	public void vmodify(File data, String dataFileName, VideoVO videoVO, File data2, String data2FileName) {
		String path1 = "C:/work/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/asd/movie/";
		String path2 = "../movie/";
		String path3 = "C:/work/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/asd/img/";
		String path4 = "../img/";

		long time = System.currentTimeMillis();
		if (data != null) {

			String FileName = time + dataFileName;
			String pathp = path2 + FileName;
			videoVO.setVlink(pathp);

			try (FileInputStream fis = new FileInputStream(data);
					BufferedInputStream bis = new BufferedInputStream(fis);
					FileOutputStream fos1 = new FileOutputStream(path1 + FileName);
					BufferedOutputStream bos1 = new BufferedOutputStream(fos1);) {
				int temp = -1;
				while ((temp = bis.read()) != -1) {
					bos1.write(temp);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		if (data2 != null) {

			String FileName2 = time + data2FileName;
			String pathp2 = path4 + FileName2;
			videoVO.setVimg(pathp2);

			try (FileInputStream fis = new FileInputStream(data2);
					BufferedInputStream bis = new BufferedInputStream(fis);
					FileOutputStream fos1 = new FileOutputStream(path3 + FileName2);
					BufferedOutputStream bos1 = new BufferedOutputStream(fos1);) {
				int temp = -1;
				while ((temp = bis.read()) != -1) {
					bos1.write(temp);
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		videoDAO.vmodify(videoVO);
	}

}

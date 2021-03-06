package cn.fishling.business.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value = "/api/file")
public class FileuploadController {
	/**
	 * 文件上传功能
	 * 
	 * @param file
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	@ResponseBody
	public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
		String path = request.getSession().getServletContext().getRealPath("upload");
		String fileName = file.getOriginalFilename();
		File dir = new File("E:\\fileSaveServer", fileName);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		// MultipartFile自带的解析方法
		file.transferTo(dir);
		return "ok!";
	}

	/**
	 * 文件下载功能
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("/down")
	public void down(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 模拟文件，myfile.txt为需要下载的文件
		String fileName = request.getSession().getServletContext().getRealPath("upload") + "/myfile.txt";
		// 获取输入流
		InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));
		// 假如以中文名下载的话
		String filename = "下载文件.txt";
		// 转码，免得文件名中文乱码
		filename = URLEncoder.encode(filename, "UTF-8");
		// 设置文件下载头
		response.addHeader("Content-Disposition", "attachment;filename=" + filename);
		// 1.设置文件ContentType类型，这样设置，会自动判断下载文件类型
		response.setContentType("multipart/form-data");
		BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
		int len = 0;
		while ((len = bis.read()) != -1) {
			out.write(len);
			out.flush();
		}
		out.close();
	}

	/*
	 * 在线预览图片
	 */
	@RequestMapping("/showImage")
	@ResponseBody
	public void showImage(String path, HttpServletResponse response) throws IOException {
		response.setContentType("text/html; charset=UTF-8");
		response.setContentType("image/jpg");
		File f = new File("E:\\fileSaveServer", "52589b67b283d21d6367e14a7d14a6ce.jpg");
		FileInputStream fis = new FileInputStream(f);
		OutputStream os = response.getOutputStream();
		try {
			int count = 0;
			byte[] buffer = new byte[1024 * 1024];
			while ((count = fis.read(buffer)) != -1)
				os.write(buffer, 0, count);
			os.flush();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (os != null)
				os.close();
			if (fis != null)
				fis.close();
		}
	}

}

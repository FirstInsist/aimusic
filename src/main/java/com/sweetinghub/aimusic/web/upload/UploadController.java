package com.sweetinghub.aimusic.web.upload;

import com.sweetinghub.aimusic.util.MP3Info;
import com.sweetinghub.aimusic.util.MP3Util;
import com.sweetinghub.aimusic.util.TmStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UploadController {
	@ResponseBody
	@RequestMapping(value = "/upload")
	public Map<String, Object> tzupload(
			@RequestParam("doc") MultipartFile file, HttpServletRequest request)
			throws IllegalStateException, IOException {
		String directory = request.getParameter("dir");
		if(TmStringUtils.isEmpty(directory))directory = "tzmusic";
		String rootDir = "resource/"+directory;
		String realPath = request.getRealPath(rootDir);
		File dirPath = new File(realPath);
		// 自动创建上传的upload目录
		if (!dirPath.exists())
			dirPath.mkdirs();
		String oldName = file.getOriginalFilename();
		String oldFileName = request.getParameter("oldName");
		String ext = TmFileUtil.getExtNoPoint(oldName);
		String newName = null;
		if (TmStringUtils.isNotEmpty(oldFileName)) {
			newName = TmFileUtil.getNotExtName(oldFileName) + "." + ext;
		} else {
			newName = TmFileUtil.generateFileName(oldName, 5, "yyyyMMddHHmmss");
		}
		File targetFile = new File(dirPath, newName);
		file.transferTo(targetFile);// 文件上传
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("name", oldName);// 文件的原始名称
		map.put("newName", newName);// 文件的新名称
		map.put("ext", ext);// 文件的后缀
		map.put("size", file.getSize());// 文件的真实大小
		map.put("sizeString", TmFileUtil.countFileSize(file.getSize()));// 获取文件转换以后的大写
		map.put("url", directory+"/" + newName);// 获取文件的具体服务器的目录
		return map;
	}

	@ResponseBody
	@RequestMapping("/parse/mp3")
	public MP3Info parse(HttpServletRequest request) {
		String realPath = request.getRealPath("resource");
		String path = request.getParameter("path");
		String mp3Path = realPath + "/" + path;
		File file = new File(mp3Path);
		try {
			if (file.exists()) {
				MP3Info mp3Info = MP3Util.getMP3Info(mp3Path);
				return mp3Info;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}

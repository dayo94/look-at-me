package file.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import file.dto.Filetest;
import file.service.face.FileService;


@Controller
public class FileController {

	//로그 객체
	private static final Logger logger = LoggerFactory.getLogger(FileController.class);
	
	//서비스 객체
	@Autowired FileService fileService;
	
	
	
	@RequestMapping(value = "/file/fileup" , method = RequestMethod.GET)
	public void fileForm() {
		logger.info("/file/fileup [GET]");
	}
	
	@RequestMapping(value = "/file/fileup" , method = RequestMethod.POST)
	public String fileup(
			
			String title
			, MultipartFile file
			
			){
		logger.info("/file/fileup [POST]");
		
		logger.info("title : {}", title);
		logger.info("file : {}", file);
		
		logger.info("origin : {}", file.getOriginalFilename());
		

		//업로드된 파일을 저장하고 DB기록
		fileService.filesave(title,file);
		
		//리다이렉트
		return "redirect:/file/list";
		
		
		
	}
	
	@RequestMapping(value = "/file/list" , method = RequestMethod.GET)
	public void fileList(Model model) {
		logger.info("/file/list [GET]");
	
		List<Filetest> list = fileService.list();	
	
		model.addAttribute("list", list);
		
	}
	
	
	@RequestMapping(value = "/file/download")
	public String download(int fileno, Model model) {
		logger.info("/file/download fileno : {}", fileno);
		
		
		//파일번호에 해당한느 파일정보를 가져오기
		Filetest file = fileService.getFile(fileno);
		
		logger.info("file : {}", file);
		
		//다운로드할 파일의 정보를 모델값으로 전달하기
		model.addAttribute("downFile", file);
		
		//viewName 지정하기
		return "down";
		
	}
	
	
	
	
}//class

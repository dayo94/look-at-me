package file.service.impl;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import file.dao.face.FileDao;
import file.dto.Filetest;
import file.service.face.FileService;

@Service
public class FileServiceImpl implements FileService {

	//로그 객체
	private static final Logger logger = LoggerFactory.getLogger(FileServiceImpl.class);
	
	//서블릿 컨텍스트 객체
	@Autowired ServletContext context;
	
	//DAO
	@Autowired FileDao fileDao; 
	
	
	@Override
	public void filesave(String title, MultipartFile file) {
		logger.info("filesave()");
		
		if (file.getSize() <= 0 ) {
			
			logger.info("파일의 크기가 0, 처리 중단");
			return;
		}
		
		
		//파일이 저장될 경로(RealPath)
		String storedPath = context.getRealPath("upload");
		logger.info("upload realPath : {} ", storedPath);
		
		
		//upload폴더가 존재하지 않으면 생성한다
		File storedFolder = new File(storedPath);
		if ( !storedFolder.exists() ) {
			storedFolder.mkdir();
			
		}
		
		//저장될 파일의 이름 생성하기
		String filename = file.getOriginalFilename(); //원본파일명
		filename += UUID.randomUUID().toString().split("-")[4]; //UUID추가
		
		logger.info("filename : {} ", filename);
		
		//저장될 파일의 정보 객체 - java.util.File
		File dest = new File(storedFolder, filename);
		
		try {
			//업로드된 파일을 저장하기
			file.transferTo(dest);
	
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//DB에 기록할 정보 객체 - DTO
		
		Filetest filetest = new Filetest();
		filetest.setTitle(title);
		filetest.setOriginName(file.getOriginalFilename());
		filetest.setStoredName(filename);
		
		fileDao.insertFile( filetest );
		
	}
	
	
	@Override
	public List<Filetest> list() {

		List<Filetest> filetest = fileDao.selectAll();
		
		return filetest;
	}
	
	
	@Override
	public Filetest getFile(int fileno) {

		
		
		return fileDao.selectByFileno(fileno);
	}
	
	
	
	
}//class

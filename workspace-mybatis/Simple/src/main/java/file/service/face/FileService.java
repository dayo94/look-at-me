package file.service.face;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import file.dto.Filetest;

public interface FileService {

	
	public void filesave(String title, MultipartFile file);

	
	public List<Filetest> list();


	
	/**
	 * 
	 * 파일번호를 이용하여 업로드된 파일의 정보를 조회한다
	 * @param fileno - 조회할 파일의 번호
	 * @return 조회된 파일 정보 객체
	 */
	public Filetest getFile(int fileno);
	
	
}

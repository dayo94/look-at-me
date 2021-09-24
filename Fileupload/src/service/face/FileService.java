package service.face;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface FileService {

	/**
	 * 파일 업로드 처리
	 * @param req -요청정보객체
	 * @param resp - 응답정보객체
	 */
	public void fileupload(HttpServletRequest req, HttpServletResponse resp);
	
	/**
	 * 파일 전체 목록을 조회한다
	 * 
	 * @return 조회된 전체 파일 목록
	 */
	public List<UploadFile> list();	
	
	
	
	
	
	
}

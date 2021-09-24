package dao.face;

import java.sql.Connection;

import dto.ParamData;
import dto.UploadFile;

public interface FileDao {

	
	
	
	
	/**
	 * 전달 파라미터 데이터 삽입하기
	 * 
	 * @param conn - 디비연결객체
	 * @param paramData - 저장할 전달데이터 DTO객체
	 * @return - 삽입수행결과값 (1 -정상삽입, 0 -실패)
	 */
	int insertParam(Connection conn, ParamData paramData);
	
	
	
	
	/**
	 * 파일정보데이터 삽입하기
	 * 
	 * @param conn - 디비연결객체
	 * @param uploadFile - 저장할 파일 정보 DTO객체
	 * @return 삽입 수행 결과값 (1 -정상삽입, 0 -실패)
	 */
	int insertFile(Connection conn, UploadFile uploadFile);
	
	
	/**
	 * 파일 정보 테이블 전체 조회
	 * 
	 * @param connection - DB연결 객체
	 * @return 테이블 전체 조회 결과 List
	 */
	public List<UploadFile> selectAll(Connection connection);

}
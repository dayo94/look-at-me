package web.dao.face;

import java.sql.Connection;

import web.dto.BoardFile;

public interface BoardFileDao {

	
	
	
	/**
	 * 
	 * @param board - 삭제할 게시글
	 */
	public void delete(Connection conn,BoardFile board);
	
	

	
}

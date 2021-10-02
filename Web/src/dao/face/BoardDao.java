package dao.face;

import java.sql.Connection;
import java.util.List;

import dto.Board;

public interface BoardDao {

	
	
	/**
	 * 
	 * @param conn - 디비연결객체
	 * @return 조회된 전체 Board테이블의 목록을 List로 반환한다
	 */
	public List<Board> selectAll(Connection conn);
	
	
	
	
	
	
	
	
	
	
}

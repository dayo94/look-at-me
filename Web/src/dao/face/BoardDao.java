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
	
	
	/**
	 * 전달된 empno를 이용하여 사원 정보를 조회한다
	 * 
	 * @param conn - DB연결 객체
	 * @param board - 조회할 게시글의 글번호
	 * @return 조회된 게시글의 정보를 Board객체로 반환한다, 존재하지 않으면 null
	 */
	public Board selectBoardByBoardno(Connection conn, int board);
	
	
	
	
//	+ Dao
//	  - [BoardDao] Board selectBoardByBoardno(Board)
//	  - [BoardDao] void updateHit(Board)
	
	
	
}

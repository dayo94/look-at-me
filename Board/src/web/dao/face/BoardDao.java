package web.dao.face;

import java.sql.Connection;
import java.util.List;

import web.dto.Board;
import web.util.Paging;

public interface BoardDao {

	/**
	 * Board테이블 전체 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return List<Board> - Board테이블 전체 조회 결과 리스트
	 */
	public List<Board> selectAll(Connection conn);

	/**
	 * Board테이블 전체 조회
	 * 	페이징 처리 추가
	 * 
	 * @param paging - 페이징 정보 객체
	 * @param conn - DB연결 객체
	 * @return List<Board> - Board테이블 전체 조회 결과 리스트
	 */
	public List<Board> selectAll(Connection conn, Paging paging);
	
	/**
	 * 총 게시글 수 조회
	 * 
	 * @param conn - DB연결 객체
	 * @return int - Board테이블 전체 행 수 조회 결과
	 */
	public int selectCntAll(Connection conn);

	/**
	 * 전달된 empno를 이용하여 사원 정보를 조회한다
	 * 
	 * @param conn - DB연결 객체
	 * @param board - 조회할 게시글의 글번호
	 * @return 조회된 게시글의 정보를 Board객체로 반환한다, 존재하지 않으면 null
	 */
	public Board selectBoardByBoardno(Connection conn, int board);

	
}

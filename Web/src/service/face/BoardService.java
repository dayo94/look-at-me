package service.face;

import java.util.List;

import dto.Board;


public interface BoardService {

	
	/**
	 * 사원의 전체 목록을 조회한다
	 * 
	 * @return 조회된 전체 사원들의 목록을 java.util.List로 반환한다
	 */
	public List<Board> getList();
	
	
	
	/**
	 * 게시글정보 조회하기
	 * 주어진 게시글번호를 이용하여 게시글정보를 조회하고 DTO객체로 반환한다
	 * 
	 * @param boardno - 조회할 게시글번호
	 * @return 조회된 게시글정보를 저장한 객체, 없으면 null
	 */
	public Board view(int boardno);


}


//+ Service
//- [BoardService] Board getBoardno(HttpServletRequest)
//	전달파라미터를 Board DTO로 저장하여 반환







//- [BoardService] Board view(Board)
//	글번호로 게시글 조회
//	hit+1 작업 추가
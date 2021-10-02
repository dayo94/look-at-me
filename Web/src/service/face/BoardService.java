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
	
	
}

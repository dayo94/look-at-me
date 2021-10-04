package web.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import web.common.JDBCTemplate;
import web.dao.face.BoardDao;
import web.dao.impl.BoardDaoImpl;
import web.dto.Board;
import web.service.face.BoardService;
import web.util.Paging;

public class BoardServiceImpl implements BoardService {

	//BoardDao 객체 생성
	private BoardDao boardDao = new BoardDaoImpl();
	
	@Override
	public List<Board> getList() {
		
		//게시글 전체 조회 결과 처리
		return boardDao.selectAll(JDBCTemplate.getConnection());
		
	}
	
	@Override
	public List<Board> getList(Paging paging) {

		//게시글 전체 조회 결과 처리 - 페이징 추가
		return boardDao.selectAll(JDBCTemplate.getConnection(), paging);
		
	}
	
	@Override
	public Paging getPaging(HttpServletRequest req) {

		//전달파라미터 curPage 파싱
		String param = req.getParameter("curPage");
		int curPage = 0;
		if(param != null && !"".equals(param)) {
			curPage = Integer.parseInt(param);
		} else {
			System.out.println("[WARNING] curPage값이 null이거나 비어있습니다");
		}
		
		//Board 테이블의 총 게시글 수를 조회한다
		int totalCount = boardDao.selectCntAll(JDBCTemplate.getConnection());
		
		//Paging객체 생성
		Paging paging = new Paging(totalCount, curPage);
		
		return paging;
	}

	@Override
	public Board view(int boardno) {
		
		//Connection객체
		Connection conn = JDBCTemplate.getConnection();
		
		Board board = boardDao.selectBoardByBoardno(conn, boardno);
		
		return board;
	}


}




















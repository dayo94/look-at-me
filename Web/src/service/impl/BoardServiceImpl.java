package service.impl;

import java.sql.Connection;
import java.util.List;

import common.JDBCTemplate;
import dao.face.BoardDao;
import dao.impl.BoardDaoImpl;
import dto.Board;
import service.face.BoardService;

public class BoardServiceImpl implements BoardService {
	
	private BoardDao boardDao = new BoardDaoImpl();

	@Override
	public List<Board> getList() {
	
		
		Connection conn = JDBCTemplate.getConnection();
		
		List<Board> list = boardDao.selectAll(conn);

		return list;
		
		
	}

	@Override
	public Board view(int boardno) {
		
		//Connection객체
		Connection conn = JDBCTemplate.getConnection();
		
		Board board = boardDao.selectBoardByBoardno(conn, boardno);
		
		return board;
	}

}

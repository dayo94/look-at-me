package web.dao.face;

import java.util.List;

import web.dto.Board;
import web.dto.BoardFile;
import web.util.Paging;

public interface BoardDao {

	public List<Board> selectAll(Paging paging);

	public int selectCntAll();

	public Board select(int boardno);

	public void hit(int boardno);

	public void insertBoard(Board board);

	public void insertBoardFile(BoardFile boardFile);
	
	public int getNextBoardno();

	public BoardFile selectByBoardNo(int boardno);
	
}

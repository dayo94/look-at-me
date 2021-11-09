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

	public BoardFile selectFileByBoardNo(int boardno);

	public void updateBoard(Board board);

	public void deleteBoard(int boardno);

	public void deleteBoardFile(int boardno);

	public void updateBoardFile(BoardFile boardFile);

	public BoardFile selectByFileNo(int fileNo);
	
}

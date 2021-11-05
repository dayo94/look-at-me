package web.dao.face;

import java.util.List;

import web.dto.Board;
import web.util.Paging;

public interface BoardDao {

	public List<Board> selectAll(Paging paging);

	public int selectCntAll();

	public Board select(int boardno);

	public void hit(int boardno);
	
}

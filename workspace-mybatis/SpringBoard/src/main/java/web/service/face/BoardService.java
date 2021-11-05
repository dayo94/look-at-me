package web.service.face;

import java.util.List;


import web.dto.Board;
import web.util.Paging;

public interface BoardService {

	public List<Board> getList(Paging paging);

	public Paging getPaging(Paging paramData);

	public Board view(int boardno);

	
	
	
	
}

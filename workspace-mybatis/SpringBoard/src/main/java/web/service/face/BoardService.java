package web.service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import web.dto.Board;
import web.dto.Paging;

public interface BoardService {

	public List<Board> getList(Paging paging);

	public Paging getPaging(HttpServletRequest req);

	
	
	
	
}

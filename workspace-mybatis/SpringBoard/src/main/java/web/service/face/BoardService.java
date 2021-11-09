package web.service.face;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import web.dto.Board;
import web.dto.BoardFile;
import web.util.Paging;

public interface BoardService {

	public List<Board> getList(Paging paging);

	public Paging getPaging(Paging paramData);

	public Board view(int boardno);

	public void write(Board board, MultipartFile file);

	public BoardFile getFile(int boardno);

	public Board viewBoard(int boardno);


	public void boardDelete(int boardno);

	public void boardUpdate(Board board, MultipartFile file);

	public BoardFile getFileByFileNo(int fileNo);
	
	
	
	
}

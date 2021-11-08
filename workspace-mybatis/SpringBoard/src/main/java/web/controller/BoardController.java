package web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import web.dto.Board;
import web.dto.BoardFile;
import web.service.face.BoardService;
import web.util.Paging;

@Controller
//@RequestMapping(value = "/board")
public class BoardController {

	//로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired private BoardService boardService;
	
	
	
	
	@RequestMapping(value = "/board/list", method=RequestMethod.GET)
	public void boardList(Paging paramData, Model model) {
		logger.info("/board/list [GET]");
		
		Paging paging = boardService.getPaging(paramData);
		List<Board> list = boardService.getList(paging);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		
	}
	
	@RequestMapping(value = "/board/view", method=RequestMethod.GET)
	public void boardView(int boardno, Model model) {
		logger.info("/board/view [GET]");
		
		Board board = boardService.view(boardno);
		logger.info("boardno: {}",boardno);
		logger.info("board: {}",board);
		
		
		
		BoardFile boardFile = boardService.getFile(boardno);
		
		model.addAttribute("board", board);
		model.addAttribute("boardFile", boardFile);
		
	}
	
	
	@RequestMapping(value = "/board/write", method=RequestMethod.GET)
	public void boardWrite() {
		logger.info("/board/write [GET]");
		
	}
	
	@RequestMapping(value = "/board/write", method=RequestMethod.POST)
	public String boardWriteProcess(Board board, MultipartFile file, HttpSession session, Model model) {
		logger.info("/board/writeProcess [POST]");
		
	
		System.out.println((String) session.getAttribute("nick")); 
		String writerId = (String) session.getAttribute("id");
		String writerNick = (String) session.getAttribute("nick");
		
		board.setWriterId(writerId);
		board.setWriterNick(writerNick);
		
		logger.info("board : {}", board);

		boardService.write(board,file);
		
		
		return "redirect:/board/list";
	}
	
	@RequestMapping(value = "/board/update", method=RequestMethod.GET)
	public void boardUpdate() {
		logger.info("/board/update [GET]");
		
	}

	@RequestMapping(value = "/board/update", method=RequestMethod.POST)
	public String boardUpdateProcess() {
		logger.info("/board/updateprocess [GET]");
		
		
		return "redirect:/board/view";
		
	}
	
	
	
	
	
	
	
}//class

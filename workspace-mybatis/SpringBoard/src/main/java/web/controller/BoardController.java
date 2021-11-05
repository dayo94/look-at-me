package web.controller;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dto.Board;
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
		
		model.addAttribute("board", board);
		
		
	}
	
	
	
	
	
	
	
	
	
	
}//class

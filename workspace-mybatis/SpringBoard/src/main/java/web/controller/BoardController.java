package web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import web.dto.Board;
import web.dto.Paging;
import web.service.face.BoardService;

@Controller
public class BoardController {

	//로깅 객체
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired private BoardService boardService;
	
	
	
	
	@RequestMapping(value = "/board/list", method=RequestMethod.GET)
	public void boardList(HttpSession session,HttpServletRequest req) {
		logger.info("/board/list [GET]");
		
		Paging paging = boardService.getPaging(req);
		List<Board> list = boardService.getList(paging);
		
		session.setAttribute("list", list);
		req.setAttribute("paging", paging);
		
		
		
	}
	
	
}

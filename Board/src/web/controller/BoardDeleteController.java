package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dto.Board;
import web.dto.BoardFile;
import web.service.face.BoardService;
import web.service.impl.BoardServiceImpl;

/**
 * Servlet implementation class BoardDeleteController
 */
@WebServlet("/board/delete")
public class BoardDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//BoardService 객체
	private BoardService boardService = new BoardServiceImpl();
	
	
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//전달파라미터 얻기 - boardno
		Board boardno = boardService.getBoardno(req);
		
		BoardFile boardFile = new BoardFile();
		
		boardFile.setBoardno(boardno.getBoardno());
				
		System.out.println(boardno);
		System.out.println(boardFile);
		
		boardService.delete(boardno);
		boardService.delete(boardFile);

		
		
		
		
		//목록으로 리다이렉션
		resp.sendRedirect("/board/list");
	}
	
	

}

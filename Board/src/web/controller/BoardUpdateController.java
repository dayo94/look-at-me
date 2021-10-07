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

@WebServlet("/board/update")
public class BoardUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//BoardService 객체 생성
	private BoardService boardService = new BoardServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//전달파라미터 얻기 - boardno
		Board boardno = boardService.getBoardno(req);

		//상세보기 결과 조회
		Board updateBoard = boardService.view(boardno);
		
		//닉네임 전달
		req.setAttribute("nick", boardService.getNick(updateBoard));
		
		//조회결과 MODEL값 전달
		req.setAttribute("updateBoard", updateBoard);

		//첨부파일 정보 VIEW에 전달
		BoardFile boardFile = boardService.viewFile(updateBoard);
		req.setAttribute("boardFile", boardFile);

		//VIEW 지정 및 응답 - forward
		req.getRequestDispatcher("/WEB-INF/views/board/update.jsp").forward(req, resp);		

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		boardService.update(req);
		
		resp.sendRedirect("/board/list");
		
	}
}

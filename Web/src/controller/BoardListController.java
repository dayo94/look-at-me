package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Board;
import service.face.BoardService;
import service.impl.BoardServiceImpl;

/**
 * Servlet implementation class BoardListController
 */
@WebServlet("/board/list")
public class BoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private BoardService boardService = new BoardServiceImpl();
	
	
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	
		List<Board> list = boardService.getList();
		
		
		req.setAttribute("boardList", list);
		
		
		
		
		req.getRequestDispatcher("/WEB-INF/views/board/list.jsp").forward(req, resp);
	
	
		
		
		
		
		
		
	
	
	}
	
	
//	
//	+ 요청시작 화면 - /board/list : 글 제목 클릭
//	  - 클릭하면 /board/view로 이동하도록 <a> 추가
//	   ( "/board/view?boardno=xxx" 형식으로 추가 )
//	
	
	

}

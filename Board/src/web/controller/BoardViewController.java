package web.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.dto.Board;
import web.service.face.BoardService;
import web.service.impl.BoardServiceImpl;

/**
 * Servlet implementation class BoardViewController
 */
@WebServlet("/board/view")
public class BoardViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	private BoardService boardService = new BoardServiceImpl();
	
	
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		// 요청정보로부터 전달파라미터 empno 추출 - req객체 이용
		String param = req.getParameter("boardno");
		System.out.println("전달파라미터 boardno : " + param);

		int boardno = 0; // 파라미터를 저장할 변수
		if (param != null && !"".equals(param)) {
			boardno = Integer.parseInt(param); // String->int 변환

		} else {
			System.out.println("[ERROR] 전달파라미터(board) 잘못 전달됨");

		}
		System.out.println("[TEST] boardno : " + boardno);

		// 정보 상세 조회하기 - boardService 이용
		Board board = boardService.view(boardno);
		System.out.println("BoardController - board : " + board);

		// 조회결과를 View에 전달 - req객체 이용
		req.setAttribute("board", board);

		// View 지정하기 - RequestDispatcher이용
		// View를 응답으로 사용하기 - forward()
		req.getRequestDispatcher("/WEB-INF/views/board/view.jsp").forward(req, resp);

	}

}

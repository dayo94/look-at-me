package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna_board;
import dto.Qna_board_attachment;
import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;

/**
 * Servlet implementation class MypageQnaViewController
 */
@WebServlet("/qna/view")
public class MypageQnaViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MypageService mypageService = new MypageServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		Qna_board boardno = mypageService.getBoardno(req);

		Qna_board viewBoard = mypageService.view(boardno);

		int user_no = viewBoard.getUser_no();

		req.setAttribute("viewBoard", viewBoard);

		Qna_board_attachment boardFile = mypageService.viewFile(viewBoard);

		req.setAttribute("boardFile", boardFile);

		User_info user_info = mypageService.getUserInfo(user_no);

		req.setAttribute("user_info", user_info);

		req.getRequestDispatcher("/WEB-INF/views/my/qnaView.jsp").forward(req, resp);

	}

}

package mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mypage.dto.Free_board;
import mypage.service.face.MypageService;
import mypage.service.impl.MypageServiceImpl;

/**
 * Servlet implementation class FreeBoardMessageController
 */
@WebServlet("/freeboard/message")
public class FreeBoardMessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 MypageService mypageService = new MypageServiceImpl(); 
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		int user_no = (int) session.getAttribute("user_no");

		String boardNo = req.getParameter("boardno");
		boardNo = new String(boardNo.getBytes("ISO-8859-1"), "UTF-8");

		int boardno = Integer.parseInt(boardNo);

		Free_board free_board = mypageService.selectFreeBoard(boardno);
				
		
		mypageService.FreeBoardInsertMessage(req, free_board, user_no);
		
		

//		req.getRequestDispatcher("/WEB-INF/views/my/qnaView.jsp").forward(req, resp);

		resp.sendRedirect("/mypage/sendmessage");
	
	
	}
	
	
}

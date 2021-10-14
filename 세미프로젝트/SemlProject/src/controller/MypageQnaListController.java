package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Qna_board;
import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;

/**
 * Servlet implementation class MypageQnaListController
 */
@WebServlet("/qna/list")
public class MypageQnaListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MypageService mypageService = new MypageServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		User_info user_info = (User_info) session.getAttribute("user_info");

		int user_no = user_info.getUser_no();

		List<Qna_board> boardList = mypageService.qnaBoardSelectAll(user_no);

		session.setAttribute("boardList", boardList);

		req.getRequestDispatcher("/WEB-INF/my/qnaList.jsp").forward(req, resp);

	}

}

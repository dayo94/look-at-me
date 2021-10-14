package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Custom_reply;
import dto.Free_board_reply;
import dto.Official_reply;
import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;

/**
 * Servlet implementation class MypageReplyListController
 */
@WebServlet("/reply/list")
public class MypageReplyListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	MypageService mypageService = new MypageServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		User_info user_info = (User_info) session.getAttribute("user_info");

		int user_no = user_info.getUser_no();

		List<Free_board_reply> freeBoardReply = mypageService.freeBoardReplySelectAll(user_no);

		System.out.println(freeBoardReply);

		session.setAttribute("freeBoardReply", freeBoardReply);

		List<Custom_reply> customReply = mypageService.customReplySelectAll(user_no);

		System.out.println(customReply);

		session.setAttribute("customReply", customReply);

		List<Official_reply> officialReply = mypageService.officialReplySelectAll(user_no);

		System.out.println(officialReply);

		session.setAttribute("officialReply", officialReply);

		req.getRequestDispatcher("/WEB-INF/my/replyList.jsp").forward(req, resp);

	}

}

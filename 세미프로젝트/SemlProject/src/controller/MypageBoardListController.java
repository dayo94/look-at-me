package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Custom_board;
import dto.Free_board;
import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;

/**
 * Servlet implementation class MypageListController
 */
@WebServlet("/board/list")
public class MypageBoardListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MypageService mypageService = new MypageServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		User_info user_info = (User_info) session.getAttribute("user_info");

		int user_no = user_info.getUser_no();
		
		
		 List<Custom_board> customBoardList = mypageService.selectAll(user_no);
		
		System.out.println(customBoardList);
		
		session.setAttribute("customBoardList", customBoardList);
		
		List<Free_board> freeBoardList = mypageService.selectAll2(user_no);
		
		System.out.println(freeBoardList);
		
		session.setAttribute("freeBoardList", freeBoardList);
		

		req.getRequestDispatcher("/WEB-INF/my/writeList.jsp").forward(req, resp);

	}

}

package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.Message;
import dto.User_info;
import service.face.MypageService;
import service.impl.MypageServiceImpl;

/**
 * Servlet implementation class MypageSendMessageList
 */
@WebServlet("/mypage/sendmessage")
public class MypageSendMessageList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private MypageService mypageService = new MypageServiceImpl();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();

		int user_no = (int) session.getAttribute("user_no");

		List<Message> message = mypageService.sendMessageSelect(user_no);

		session.setAttribute("message", message);
		System.out.println(message.get(2));

		req.getRequestDispatcher("/WEB-INF/views/my/mypageSendMessageList.jsp").forward(req, resp);

	}

}

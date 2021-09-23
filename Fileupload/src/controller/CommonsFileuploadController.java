package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.face.FileService;
import service.impl.FileServiceImpl;

/**
 * Servlet implementation class CommonsFileuploadController
 */
@WebServlet("/commons/fileupload")
public class CommonsFileuploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	//서비스 객체
	private FileService fileService = new FileServiceImpl();
	
	
	
	
@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	req.getRequestDispatcher("/WEB-INF/views/commons/fileupload.jsp").forward(req, resp);

	System.out.println("/commons/fileupload [GET]");

}	




@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	System.out.println("/commons/fileupload [POST]");
	
	//---------------------------------------------
	
	
	fileService.fileupload(req, resp);
	
	
	
	
	
	
	
	
	
	
	
	
	//---------------------------------------------
//	System.out.println("title : " + req.getParameter("title"));
//	System.out.println("data1 : " + req.getParameter("data1"));
//	System.out.println("data2 : " + req.getParameter("data2"));
//	System.out.println("file : " + req.getParameter("file"));

	// 폼태그의 데이터인 코딩방식을 멀티파트 폼데이터로 설정하면 겟파라미터 메소드로 전달 데이터를 추출할수 없다
	//파일업로드 라이브러리를 이용해야만 가능하다
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}







}//class

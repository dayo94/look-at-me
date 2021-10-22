package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Emp;
import service.face.EmpService;
import service.impl.EmpServiceImpl;

/**
 * Servlet implementation class EmpListController
 */
@WebServlet("/emp/list")
public class EmpListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//서비스객체
	private EmpService empService = new EmpServiceImpl();
	
	
	
	
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/emp/list [GET]");
		
		
		//사원정보 전체 조회
		List<Emp> empList = empService.getList();
		
		//테스트 출력
		for(Emp e : empList) System.out.println(e);
		
		//조회된 결과를 모델값으로 전달
		req.setAttribute("empList", empList);
		
		//뷰 지정
		req.getRequestDispatcher("/WEB-INF/views/emp/list.jsp").forward(req, resp);

	
	
	
	
	
	
	
	
	
	
	
	
	}//doget
	
}//class

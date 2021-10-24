package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Emp;
import service.face.EmpService;
import service.impl.EmpServiceImpl;

@WebServlet("/emp/detail")
public class EmpDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//서비스 객체
	private EmpService empService = new EmpServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/emp/detail [GET]");
		
		//전달 파라미터 얻기
		Emp emp = empService.getParamEmpno(req);
		
		//empno param test
		//empno만 담긴 emo객체 반환
		System.out.println("EmpDetailController - empno : " + emp);
		
		//상세보기 조회 결과
		Emp result = empService.getEmpDetail(emp);
		
		//조회 결과 테스트
		System.out.println("EmpDetailController - 조회결과 : " + result);
		
		//모델값 전달
		req.setAttribute("emp", result);
		
		//View 포워드
		req.getRequestDispatcher("/WEB-INF/views/emp/detail.jsp").forward(req, resp);
		
	}
	
}















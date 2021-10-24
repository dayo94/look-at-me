package service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.face.EmpDao;
import dto.Emp;
import mybatis.MyBatisConnectionFactory;
import service.face.EmpService;

public class EmpServiceImpl implements EmpService {
	
	//마이바티스 연결 객체
	private SqlSessionFactory factory = MyBatisConnectionFactory.getSqlSessionFactory();
	
	//DAO객체
	private EmpDao empDao = null;
	
	@Override
	public List<Emp> getList() {
		
		//마이바티스 수행 객체
		SqlSession sqlSession = factory.openSession();
		
		//매퍼를 이용한 DAO객체 연결
		empDao = sqlSession.getMapper(EmpDao.class);
		
		//전체 리스트 조회
		List<Emp> empList = empDao.selectAll();
		
		//자원 해제
		sqlSession.close();
		
		//조회된 결과 반환
		return empList;
	}
	
	@Override
	public Emp getParamEmpno(HttpServletRequest req) {
		
		//전달파라미터 empno 얻기
		String param = req.getParameter("empno");
		
		//String->int변환하여 저장할 변수
		int empno = 0;
		
		//전달파라미터값이 존재할 때 동작하도록 설정
		if( param!=null && !"".equals(param) ) {
			empno = Integer.parseInt(param); //String->int변환
		}
		
		//전달파라미터를 DTO에 저장
		Emp emp = new Emp();
		emp.setEmpno(empno);
		
		//DTO객체 반환
		return emp;
	}
	
	@Override
	public Emp getEmpDetail(Emp emp) {
		
		//마이바티스 수행 객체
		SqlSession sqlSession = factory.openSession();
		
		//매퍼-DAO 연결
		empDao = sqlSession.getMapper(EmpDao.class);
		
		//사원 정보 상세 조회
		Emp result = empDao.selectByEmpno(emp);
		
		//마이바티스 자원 해제
		sqlSession.close();
		
		//조회 결과 반환
		return result;
	}
}














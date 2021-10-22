package service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.face.EmpDao;
import dto.Emp;
import mybatis.MyBatisConnectionFactory;
import service.face.EmpService;

public class EmpServiceImpl implements EmpService{

	
	
	//마이바티스 연결 객체
	private SqlSessionFactory factory = MyBatisConnectionFactory.getSqlSessionFactory();
	
	//Dao객체
	private EmpDao empDao = null;
	
	
	@Override
	public List<Emp> getList() {

		//마이바티스 수행 객체
		SqlSession sqlSession = factory.openSession();
		
		//매퍼를 이용한 dao객체 연결
		empDao = sqlSession.getMapper(EmpDao.class);
		
		//전체리스트 조회
		List<Emp> empList = empDao.selectAll();
		
		//자원 해제
		sqlSession.close();
		
		//조회된 결과 반환
		return empList;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}//class

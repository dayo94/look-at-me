package controller;

import java.util.List;
import java.util.Scanner;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.face.DeptDao;
import dto.Dept;
import mybatis.MyBatisConnectionFactory;

public class MyBatisEx {
	public static void main(String[] args) {
		//마이바티스 실행 객체
		SqlSession sqlSession = null;
		//sqlsession객체릴 생성하는 팩토리 객체
		SqlSessionFactory sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
		//디비 접속 및 sql 수행객체 생성하기
		sqlSession = sqlSessionFactory.openSession(true); // 매개변수가 true일 경우 auro commit
		
		//-------------------------------------------------------------------------------------
		
		//마이바티스 매퍼와 자바프로그램의 DAO인터페이스가 매핑된다(연결된다)
		DeptDao deptDao = sqlSession.getMapper(DeptDao.class);
		
		System.out.println("마이바티스 로드 완료");
		
		//-------------------------------------------------------------------------------------

		//마이바티스를 이용한 sql수행
		Dept dept = deptDao.selectByDeptno(30);
		System.out.println(dept);
		
		//-------------------------------------------------------------------------------------

		//전체 부서 정보 조회

		List<Dept> list = deptDao.selectAll();
		
		System.out.println("\n--전체 목록-----");
		
		for(Dept d : list) {
			System.out.println( d );
			
		}
		
		//---------------------------------------------------------------------------
		
		String str = "ACCOUNTING";
		
		Dept result1 = deptDao.selectByDname( str );
//		Dept result1 = deptDao.selectByDname( "OPERATIONS" );
		
		
		System.out.println("\n---부서명을 이용한 조회-----");
		System.out.println( result1 );
		
		//---------------------------------------------------------------------------

		
		Dept data = new Dept();
		data.setDname("RESEARCH");
		
		Dept result2 = deptDao.selectByDnameDept( data );
		System.out.println("\n---부서명(DTO)을 이용한 조회-----");
		System.out.println(result2);
		
		
		//---------------------------------------------------------------------------

		
		System.out.println("\n---새로운 부서 정보 삽입-----");
		
		Dept input = new Dept();
		
		Scanner sc = new Scanner(System.in);
		System.out.println("부서번호? ");
		input.setDeptno( sc.nextInt() );

		sc.nextLine();
		System.out.println("부서이름? ");
		input.setDname( sc.nextLine() );
		
		System.out.println("위치? ");
		input.setLoc( sc.nextLine() );
		
		Dept res = deptDao.selectByDeptno(input.getDeptno());
//		System.out.println(res);
		
		if (res == null) { //중복데이터잆음
			
			//부서정보삽입
			int rows = deptDao.insert(input);
			System.out.println("sql수행이후 영향받은 행 수 : " + rows);
			
			
			//db commit
//			sqlSession.commit();
			
			//삽입 결과 확인
			Dept insertResult = deptDao.selectByDeptno(input.getDeptno());
			System.out.println("\n---삽입결과---------");
			System.out.println(insertResult);
			
			deptDao.insert( input );
		} else {//중복데이터 있음
			System.out.println("이미 존재하는 부서 번호입니다");
			
		}
		
		
		
		
		
		
		
		
	}//main
}//class

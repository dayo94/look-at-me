package controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.EmpDao;
import dto.Emp;
import mybatis.MyBatisConnectionFactory;

public class EmpEx {
	
	//SqlSessionFactory객체
	private static SqlSessionFactory sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	
	public static void main(String[] args) {
		
//		(실행 순서)
//		dao.selectAll(); - 결과출력 [완]
//		dao.insertEmp(emp); [완]
//		dao.selectByEmpNo(emp); - 결과출력
//		dao.deleteByEmpNo(emp);
//		dao.selectAll(); - 결과출력
		
		//----------------------------------------------------
		
		//마이바티스 수행 객체
		SqlSession sqlSession = sqlSessionFactory.openSession(true); //Auto Commit
		
		//----------------------------------------------------
		
		//Dao인터페이스의 추상메소드와 Mapper XML의 SQL태그를 매핑한다
		EmpDao empDao = sqlSession.getMapper(EmpDao.class);
		
		//----------------------------------------------------

		System.out.println("--- 전체 출력 ---");
		for( Emp e : empDao.selectAll() ) {
			System.out.println( e );
		}
		
		//----------------------------------------------------
		
		System.out.println("\n--- 신규 정보 삽입 ---");
		Scanner sc = new Scanner(System.in);
		
		Emp emp = new Emp();
		
		System.out.print(" >> 사원 번호? ");
		emp.setEmpno( sc.nextInt() );
		
		sc.nextLine(); //버퍼 비우기
		
		System.out.print(" >> 사원 이름? ");
		emp.setEname( sc.nextLine() );
		
		System.out.print(" >> 직무? ");
		emp.setJob( sc.nextLine() );
		
		System.out.print(" >> 매니저 번호? ");
		emp.setMgr( sc.nextInt() );

		sc.nextLine(); //버퍼 비우기
		
		System.out.print(" >> 입사 날짜(yyyy-MM-dd 형식)? ");
		String param = sc.nextLine();

		//날짜 형식의 문자열 -> java.util.Date 변환 객체
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date hiredate = null;
		try {
			hiredate = sdf.parse( param );
		} catch (ParseException e1) {
//			e1.printStackTrace();
			System.err.println(" >> 날짜의 입력 형식은 yyyy-MM-dd 이어야 합니다");
		}
		emp.setHiredate(hiredate);
		
		System.out.print(" >> 급여? ");
		emp.setSal( sc.nextDouble() );
		
		System.out.print(" >> 상여금? ");
		emp.setComm( sc.nextDouble() );
		
		System.out.print(" >> 부서번호? ");
		emp.setDeptno( sc.nextInt() );
		
//		System.out.println("[TEST] 삽입 데이터 : " + emp);
		
		
		// TEST테이터
//		emp.setEmpno( 9106 ); //테스트 시 PK 주의
//		emp.setEname( "TEST" );
//		emp.setJob( "TEST2" );
//		emp.setMgr( 7369 );
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Date hiredate = null;
//		try {
//			hiredate = sdf.parse( "2021-06-23" );
////			hiredate = sdf.parse( "20210623" ); //날짜 형식 에러 테스트
//		} catch (ParseException e1) {
////			e1.printStackTrace();
//			System.err.println(" >> 날짜의 입력 형식은 yyyy-MM-dd 이어야 합니다");
//			return;
//		}
//		emp.setHiredate(hiredate);
//		emp.setSal( 342.55 );
//		emp.setComm( 454.34 );
//		emp.setDeptno( 40 );

		
		empDao.insertEmp( emp );
		
		System.out.println("\n--- 삽입된 데이터 확인 ---");
		System.out.println( empDao.selectByEmpNo(emp) );
		
		//----------------------------------------------------

		System.out.println("\n--- 데이터 삭제 ---");
		empDao.deleteByEmpNo( emp );

		System.out.println("\n--- 삭제된 데이터 확인 ---");
		System.out.println( empDao.selectByEmpNo(emp) );
		
	}
}

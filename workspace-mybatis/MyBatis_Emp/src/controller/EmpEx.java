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
	
	//SqlSessionFactory��ü
	private static SqlSessionFactory sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
	
	public static void main(String[] args) {
		
//		(���� ����)
//		dao.selectAll(); - ������ [��]
//		dao.insertEmp(emp); [��]
//		dao.selectByEmpNo(emp); - ������
//		dao.deleteByEmpNo(emp);
//		dao.selectAll(); - ������
		
		//----------------------------------------------------
		
		//���̹�Ƽ�� ���� ��ü
		SqlSession sqlSession = sqlSessionFactory.openSession(true); //Auto Commit
		
		//----------------------------------------------------
		
		//Dao�������̽��� �߻�޼ҵ�� Mapper XML�� SQL�±׸� �����Ѵ�
		EmpDao empDao = sqlSession.getMapper(EmpDao.class);
		
		//----------------------------------------------------

		System.out.println("--- ��ü ��� ---");
		for( Emp e : empDao.selectAll() ) {
			System.out.println( e );
		}
		
		//----------------------------------------------------
		
		System.out.println("\n--- �ű� ���� ���� ---");
		Scanner sc = new Scanner(System.in);
		
		Emp emp = new Emp();
		
		System.out.print(" >> ��� ��ȣ? ");
		emp.setEmpno( sc.nextInt() );
		
		sc.nextLine(); //���� ����
		
		System.out.print(" >> ��� �̸�? ");
		emp.setEname( sc.nextLine() );
		
		System.out.print(" >> ����? ");
		emp.setJob( sc.nextLine() );
		
		System.out.print(" >> �Ŵ��� ��ȣ? ");
		emp.setMgr( sc.nextInt() );

		sc.nextLine(); //���� ����
		
		System.out.print(" >> �Ի� ��¥(yyyy-MM-dd ����)? ");
		String param = sc.nextLine();

		//��¥ ������ ���ڿ� -> java.util.Date ��ȯ ��ü
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date hiredate = null;
		try {
			hiredate = sdf.parse( param );
		} catch (ParseException e1) {
//			e1.printStackTrace();
			System.err.println(" >> ��¥�� �Է� ������ yyyy-MM-dd �̾�� �մϴ�");
		}
		emp.setHiredate(hiredate);
		
		System.out.print(" >> �޿�? ");
		emp.setSal( sc.nextDouble() );
		
		System.out.print(" >> �󿩱�? ");
		emp.setComm( sc.nextDouble() );
		
		System.out.print(" >> �μ���ȣ? ");
		emp.setDeptno( sc.nextInt() );
		
//		System.out.println("[TEST] ���� ������ : " + emp);
		
		
		// TEST������
//		emp.setEmpno( 9106 ); //�׽�Ʈ �� PK ����
//		emp.setEname( "TEST" );
//		emp.setJob( "TEST2" );
//		emp.setMgr( 7369 );
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		Date hiredate = null;
//		try {
//			hiredate = sdf.parse( "2021-06-23" );
////			hiredate = sdf.parse( "20210623" ); //��¥ ���� ���� �׽�Ʈ
//		} catch (ParseException e1) {
////			e1.printStackTrace();
//			System.err.println(" >> ��¥�� �Է� ������ yyyy-MM-dd �̾�� �մϴ�");
//			return;
//		}
//		emp.setHiredate(hiredate);
//		emp.setSal( 342.55 );
//		emp.setComm( 454.34 );
//		emp.setDeptno( 40 );

		
		empDao.insertEmp( emp );
		
		System.out.println("\n--- ���Ե� ������ Ȯ�� ---");
		System.out.println( empDao.selectByEmpNo(emp) );
		
		//----------------------------------------------------

		System.out.println("\n--- ������ ���� ---");
		empDao.deleteByEmpNo( emp );

		System.out.println("\n--- ������ ������ Ȯ�� ---");
		System.out.println( empDao.selectByEmpNo(emp) );
		
	}
}

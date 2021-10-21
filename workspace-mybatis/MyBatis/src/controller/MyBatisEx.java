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
		//���̹�Ƽ�� ���� ��ü
		SqlSession sqlSession = null;
		//sqlsession��ü�� �����ϴ� ���丮 ��ü
		SqlSessionFactory sqlSessionFactory = MyBatisConnectionFactory.getSqlSessionFactory();
		//��� ���� �� sql ���ఴü �����ϱ�
		sqlSession = sqlSessionFactory.openSession(true); // �Ű������� true�� ��� auro commit
		
		//-------------------------------------------------------------------------------------
		
		//���̹�Ƽ�� ���ۿ� �ڹ����α׷��� DAO�������̽��� ���εȴ�(����ȴ�)
		DeptDao deptDao = sqlSession.getMapper(DeptDao.class);
		
		System.out.println("���̹�Ƽ�� �ε� �Ϸ�");
		
		//-------------------------------------------------------------------------------------

		//���̹�Ƽ���� �̿��� sql����
		Dept dept = deptDao.selectByDeptno(30);
		System.out.println(dept);
		
		//-------------------------------------------------------------------------------------

		//��ü �μ� ���� ��ȸ

		List<Dept> list = deptDao.selectAll();
		
		System.out.println("\n--��ü ���-----");
		
		for(Dept d : list) {
			System.out.println( d );
			
		}
		
		//---------------------------------------------------------------------------
		
		String str = "ACCOUNTING";
		
		Dept result1 = deptDao.selectByDname( str );
//		Dept result1 = deptDao.selectByDname( "OPERATIONS" );
		
		
		System.out.println("\n---�μ����� �̿��� ��ȸ-----");
		System.out.println( result1 );
		
		//---------------------------------------------------------------------------

		
		Dept data = new Dept();
		data.setDname("RESEARCH");
		
		Dept result2 = deptDao.selectByDnameDept( data );
		System.out.println("\n---�μ���(DTO)�� �̿��� ��ȸ-----");
		System.out.println(result2);
		
		
		//---------------------------------------------------------------------------

		
		System.out.println("\n---���ο� �μ� ���� ����-----");
		
		Dept input = new Dept();
		
		Scanner sc = new Scanner(System.in);
		System.out.println("�μ���ȣ? ");
		input.setDeptno( sc.nextInt() );

		sc.nextLine();
		System.out.println("�μ��̸�? ");
		input.setDname( sc.nextLine() );
		
		System.out.println("��ġ? ");
		input.setLoc( sc.nextLine() );
		
		Dept res = deptDao.selectByDeptno(input.getDeptno());
//		System.out.println(res);
		
		if (res == null) { //�ߺ������͟���
			
			//�μ���������
			int rows = deptDao.insert(input);
			System.out.println("sql�������� ������� �� �� : " + rows);
			
			
			//db commit
//			sqlSession.commit();
			
			//���� ��� Ȯ��
			Dept insertResult = deptDao.selectByDeptno(input.getDeptno());
			System.out.println("\n---���԰��---------");
			System.out.println(insertResult);
			
			deptDao.insert( input );
		} else {//�ߺ������� ����
			System.out.println("�̹� �����ϴ� �μ� ��ȣ�Դϴ�");
			
		}
		
		
		
		
		
		
		
		
	}//main
}//class

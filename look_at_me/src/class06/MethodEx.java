package class06;

import java.util.Arrays;

public class MethodEx {

	public static void main(String[] args) {

		
		System.out.println("-------------method_01-------------------");
		
		Method_01 m01 = new Method_01(); //��ü ����
		
		int result = m01.add( 11, 22 );
		
		
		
	
		
		System.out.println("������ ��� : " +result);
		
		//�޼ҵ� ȣ���� return���� ��ٷ� ��¿� ����ϱ�
		System.out.println("������ ��� : " + m01.add( 111, 222 ));
		
		
		
		
		System.out.println("-------------method_02-------------------");

		Method_02 m02 = new Method_02();
		
		m02.method1();
		
		m02.method2(12);

		System.out.println("��ȯ�� �� : " + m02.returnNum());
		
		m02.plus(519, 212);
		
		System.out.println("���� ��� : " + m02.plus(519, 212));
		
		//ctrl+z ������� ctrl+y
		//ctrl+x �߶󳻱�
		
		
		System.out.println("-------------method_03-------------------");
		
		Method_03 m03 = new Method_03();
		
		System.out.println("---�⺻�� ���� �׽�Ʈ---");
		int num = 888;
		
		System.out.println("ȣ����: " + num);
		
		m03.primitiveTest(num); //���� ���� ȣ�� call by Value
		
		
		System.out.println("ȣ����: " + num);
		
		
		
		System.out.println("---������ ���� �׽�Ʈ---");
		
		int[] arr = new int[5];
		arr[2] = 100;
		
		System.out.println("ȣ����: " + Arrays.toString(arr));
		
		m03.arrayTest(arr); //������ ���� ȣ�� call by reference
		
		System.out.println("ȣ����: " + Arrays.toString(arr));
		
		
		
		System.out.println("-------------method_04-------------------");
		
		
		
		Method_04 m04 = new Method_04();
		
		m04.returnTest();
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class

package control;

import java.util.Scanner;

public class forQuiz {

	public static void main(String[] args) {

		
		
		//������ �� �Է¹��� ���� �ܼ��� ����Ͽ���
		//		ex) Input >> 4
		//
		//		    4 x 1 = 4
		//		    4 x 2 = 8
		//		    4 x 3 = 12
		//		    ....
		
		
		Scanner sc = new Scanner(System.in);

		System.out.print("2~9 ������ ���� �ϳ��� �Է��ϼ��� : ");

		int num = sc.nextInt();

		System.out.println();


		for (int i=1; i<10; i++) {
			System.out.println("������ " + num + "�� : " 
					+ num + " X " + i 
					+ " = " + num*i );
		}
		
		
		
		
		
		
		
		
		
		
	}//main

}//class

package control;

import java.util.Scanner;

public class ifQuiz {

	public static void main(String[] args) {
		

		Scanner sc = new Scanner(System.in);
		
		System.out.print("���ڸ� �Է��ϼ��� : ");
		
		int num = sc.nextInt();
		
		
		if ( num < 0) {
			System.out.println("Input Number : " + num);
			System.out.println("�����Դϴ�");
		} else {
			System.out.println("Input Number : " + num);
			System.out.println("����Դϴ�");
		} 

			
		
		
		
		
		if ( num % 3 == 0 && num != 0 ) {
			System.out.println("Input Number : " + num);
			System.out.println("3�� ��� �Դϴ�");
		} else {
			System.out.println("Input Number : " + num);
			System.out.println("3�� ����� �ƴմϴ�");
		}
				
		
		
		
		
		System.out.println("-----------------------");
		
		
		
		System.out.println("���ڸ� �Է��ϼ���.");

		
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		

		System.out.println("Input Number : " + num1);
		System.out.println("Input Number : " + num2);
	
		if ( num1 < num2 ) {
			System.out.println(num2 + " �� �� Ů�ϴ�.");
		} else if ( num1 > num2 ) {
			System.out.println(num1 + " �� �� Ů�ϴ�");
		} else {
			System.out.println("�� ���� �����ϴ�");
		}
		
		
		
		
		

	}//main

}//class

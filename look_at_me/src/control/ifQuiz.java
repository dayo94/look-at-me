package control;

import java.util.Scanner;

public class ifQuiz {

	public static void main(String[] args) {
		

		Scanner sc = new Scanner(System.in);
		
		System.out.print("숫자를 입력하세요 : ");
		
		int num = sc.nextInt();
		
		
		if ( num < 0) {
			System.out.println("Input Number : " + num);
			System.out.println("음수입니다");
		} else {
			System.out.println("Input Number : " + num);
			System.out.println("양수입니다");
		} 

			
		
		
		
		
		if ( num % 3 == 0 && num != 0 ) {
			System.out.println("Input Number : " + num);
			System.out.println("3의 배수 입니다");
		} else {
			System.out.println("Input Number : " + num);
			System.out.println("3의 배수가 아닙니다");
		}
				
		
		
		
		
		System.out.println("-----------------------");
		
		
		
		System.out.println("숫자를 입력하세요.");

		
		int num1 = sc.nextInt();
		int num2 = sc.nextInt();
		

		System.out.println("Input Number : " + num1);
		System.out.println("Input Number : " + num2);
	
		if ( num1 < num2 ) {
			System.out.println(num2 + " 이 더 큽니다.");
		} else if ( num1 > num2 ) {
			System.out.println(num1 + " 이 더 큽니다");
		} else {
			System.out.println("두 수가 같습니다");
		}
		
		
		
		
		

	}//main

}//class

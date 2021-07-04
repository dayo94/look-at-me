package control;

import java.util.Scanner;

public class forQuiz {

	public static void main(String[] args) {

		
		
		//구구단 중 입력받은 수의 단수를 출력하여라
		//		ex) Input >> 4
		//
		//		    4 x 1 = 4
		//		    4 x 2 = 8
		//		    4 x 3 = 12
		//		    ....
		
		
		Scanner sc = new Scanner(System.in);

		System.out.print("2~9 사이의 숫자 하나를 입력하세요 : ");

		int num = sc.nextInt();

		System.out.println();


		for (int i=1; i<10; i++) {
			System.out.println("구구단 " + num + "단 : " 
					+ num + " X " + i 
					+ " = " + num*i );
		}
		
		
		
		
		
		
		
		
		
		
	}//main

}//class

package api;

import java.util.Random;
import java.util.Scanner;


public class BASKIN31_QUIZ {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		Random ran = new Random();

		int num = 0;

		do {

			System.out.println("1~3 사이의 숫자를 입력하세요");
			System.out.print(">>");
			int input = sc.nextInt();


			switch (input) {

			case 1: 
				System.out.println(num+1);
				num = num+1;

				break;

			case 2: 
				System.out.println(num+1);
				System.out.println(num+2);
				num = num+2;

				break;

			case 3: 
				System.out.println(num+1);
				System.out.println(num+2);
				System.out.println(num+3);
				num = num+3;

				break;

			}

			System.out.println();


			int com = ran.nextInt(3)+1;

			if(num<27) {

				System.out.print(">>");
				System.out.println(com);


				switch (com) {

				case 1: 
					System.out.println(num+1);
					num = num+1;

					break;

				case 2: 
					System.out.println(num+1);
					System.out.println(num+2);
					num = num+2;

					break;

				case 3: 
					System.out.println(num+1);
					System.out.println(num+2);
					System.out.println(num+3);
					num = num+3;

					break;
				}

			} else if (num>26) {
				System.out.print(">>");

				switch (num) {

				case 27: 
					System.out.println(3);
					System.out.println(num+1);
					System.out.println(num+2);
					System.out.println(num+3);
					num = num+3;

					break;

				case 28: 
					System.out.println(2);
					System.out.println(num+1);
					System.out.println(num+2);
					num = num+2;

					break;

				case 29: 
					System.out.println(1);
					System.out.println(num+1);
					num = num+1;

					break;
					
				case 30: 
					System.out.println(1);
					System.out.println(num+1 + " ㅠㅡㅠ");
					num = num+1;
					
					break;
				}
			}
		} while (num!=31 && num<32);

		System.out.println("끝");



	}//main

}//class
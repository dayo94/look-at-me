package api;

import java.util.Random;
import java.util.Scanner;

public class UPDOWN_QUIZ {

	public static void main(String[] args) {


		Random ran = new Random();

		int com = (ran.nextInt(50))+1;


		Scanner sc = new Scanner(System.in);

		System.out.println("1~50 사이의 숫자를 입력하세요");
		System.out.print(">>");
		int user = sc.nextInt();

		for(int i=0; i<7; i++) {
			if(i<6) {
				if (user<com) {
					System.out.println("up");
					System.out.println("숫자를 입력하세요");
					System.out.print(">>");
					user = sc.nextInt();

				} else if (user>com) {
					System.out.println("down");
					System.out.println("숫자를 입력하세요");
					System.out.print(">>");
					user = sc.nextInt();
				} else if (user == com) {
					System.out.println("user 승리");
					break;
				} 
			}
			
			if(i==6) {
				System.out.println("com 승리");
			}

		}//for


	}//main

}//class
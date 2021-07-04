package control;

import java.util.Scanner;

public class MenuDoWhileSwitch {

	public static void main(String[] args) {


		//메뉴 번호 상수
		final int HELLO_MENU = 1;
		final int NAME_MENU = 2;
		final int GENDER_MENU = 3;
		final int EXIT_MENU = 4;




		Scanner sc = new Scanner(System.in);

		int select = 0;


		do {
			System.out.println();
			System.out.println("======================");
			System.out.println("메뉴");
			System.out.println("======================");
			System.out.println("숫자를 입력하세요");
			System.out.println("1. Hello World 출력");
			System.out.println("2. 이름 출력");
			System.out.println("3. 성별 출력");
			System.out.println("4. 종료");
			System.out.println("======================");
			System.out.println();
			System.out.print("input number : ");	



			try {
				select = sc.nextInt();
			} catch(Exception e) {
				System.out.println(" !! select : " + select);
				System.out.println("숫자를 입력하세요!");
				select = EXIT_MENU;
			}




			System.out.println();
			System.out.print(">>");

			switch (select) {
			case HELLO_MENU:
				System.out.println("Hello World");
				break;

			case NAME_MENU:
				System.out.println("이다영");
				break;

			case GENDER_MENU:
				System.out.println("여자");
				break;


			case EXIT_MENU:
				System.out.println("프로그램을 종료합니다");
				break;

			default:
				System.out.println("숫자를 다시 입력해주세요");
			} 
		} while (select != EXIT_MENU);






	} //main end

} //class end

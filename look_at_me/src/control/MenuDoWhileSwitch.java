package control;

import java.util.Scanner;

public class MenuDoWhileSwitch {

	public static void main(String[] args) {


		//�޴� ��ȣ ���
		final int HELLO_MENU = 1;
		final int NAME_MENU = 2;
		final int GENDER_MENU = 3;
		final int EXIT_MENU = 4;




		Scanner sc = new Scanner(System.in);

		int select = 0;


		do {
			System.out.println();
			System.out.println("======================");
			System.out.println("�޴�");
			System.out.println("======================");
			System.out.println("���ڸ� �Է��ϼ���");
			System.out.println("1. Hello World ���");
			System.out.println("2. �̸� ���");
			System.out.println("3. ���� ���");
			System.out.println("4. ����");
			System.out.println("======================");
			System.out.println();
			System.out.print("input number : ");	



			try {
				select = sc.nextInt();
			} catch(Exception e) {
				System.out.println(" !! select : " + select);
				System.out.println("���ڸ� �Է��ϼ���!");
				select = EXIT_MENU;
			}




			System.out.println();
			System.out.print(">>");

			switch (select) {
			case HELLO_MENU:
				System.out.println("Hello World");
				break;

			case NAME_MENU:
				System.out.println("�̴ٿ�");
				break;

			case GENDER_MENU:
				System.out.println("����");
				break;


			case EXIT_MENU:
				System.out.println("���α׷��� �����մϴ�");
				break;

			default:
				System.out.println("���ڸ� �ٽ� �Է����ּ���");
			} 
		} while (select != EXIT_MENU);






	} //main end

} //class end

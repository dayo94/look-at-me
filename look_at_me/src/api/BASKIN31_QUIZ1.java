package api;

import java.util.Random;
import java.util.Scanner;

public class BASKIN31_QUIZ1 {

	public static void main(String[] args) {
		int com = 0; //��ǻ���� ���� (����)
		int user = 0; //������� ���� (�Է�)
		
		Scanner sc = new Scanner(System.in); //�Է� ��ü
		Random ran = new Random(); //���� ��ü

		
		int num = 1; //���� ���� ����
		int max = 31; //���� ���� ����
		
		int winner = 0; //���� üũ, 1: user, 2: com
		
		
		while(num<=max) {
			com = ran.nextInt(3) + 1; //��ǻ���� ���Ӽ��� ����, 1~3 
			
			for(int i=0; i<com && num<=max; i++) {
				System.out.println("com >> " + num++);
				
				if(num>max)	winner=1; //����� �¸�
			}
	
			
			
			while(num<=max) {
				System.out.println();
				System.out.print(">> �� ���� ��������? ");
				user = sc.nextInt();
				
				if(user>=1 && user<=3) {
					break;
				}
				
				System.out.println("[SYSTEM] 1~3�� �Է��ϼ���");
			}
			
			for(int i=0; i<user && num<=max; i++) {
				System.out.println("user >> " + num++);
				
				if(num>max)	winner=2; //��ǻ�� �¸�
			}
		}
		
		
		
		//���� ���
		if(winner == 1) {
			System.out.println("����� �¸�!");
		} else if(winner == 2) {
			System.out.println("��ǻ�� �¸�!");
		}
		
	}
}

package api;

import java.util.Random;
import java.util.Scanner;

public class UPDOWN_QUIZ1 {

	public static void main(String[] args) {
		int com; //��ǻ���� ���� (����)
		int user; //������� ���� (�Է�)
		
		Scanner sc = new Scanner(System.in); //�Է� ��ü
		Random ran = new Random(); //���� ��ü
		
		
		System.out.println("=============== START ===============");
		
		com = ran.nextInt(50) + 1; //��ǻ�� ���� ���� ����, 1~50
//		System.out.println("[TEST] " + com);	
		
		
		for(int count=0; count<7; count++) {
			//������� �Է�
			while(true) {
				System.out.print("1~50 �� �ϳ� �Է� : ");
				user = sc.nextInt();
				
				if( 1<=user && user<=50 ) {
					break;
				} else {
					System.out.println("[SYSTEM] 1~50 ������ ���ڸ� �Է��ϼ���!");
				}
			}
			
			
			//��ǻ�ͷ������� �� ������Է¼��� ��
			if( com==user ) {
				System.out.println("�̰���ϴ�!");
				return; //���α׷� ����
				
			} else if( com<user ) {
				System.out.println("DOWN");
				
			} else if( com>user ) {
				System.out.println("UP");
				
			}
		}
		
		System.out.println("�����ϴ�! ��ǻ�ʹ� [ " + com + " ]�Դϴ�");
		
	}
}



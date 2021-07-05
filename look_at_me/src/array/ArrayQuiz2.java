package array;

import java.util.Scanner;

public class ArrayQuiz2 {

	public static void main(String[] args) {


		//--- ��� ���� ---
		//	���� ���Ǵ� ��
		//	�������� ���Ǵ� ��
		final int FLOOR = 8; //�ǹ��� �� ��
		final int FEE = 15000; //�δ� ������
		//-----------------


		//--- ���� ���� ---
		int[] people = new int[FLOOR+1]; //�� �� �ο� + �� �ο�
		int[] expense = new int[FLOOR+1]; //�� �� ������ + �� ������

		Scanner sc = new Scanner(System.in); //ǥ�� �Է� ��ü
		//-----------------


		//--- �� ���� �ο� �Է� ---
		System.out.println("- - - �� ���� �ο� �Է� - - -");
		for(int i=0; i<FLOOR; i++) { //i, 0 ~ FLOOR-1, FLOOR ȸ
			System.out.print(" >> " + (i+1) + "���� �ο���? ");
			people[i] = sc.nextInt();

			//�� �ο� �� �հ� ���
			people[FLOOR] += people[i];
		}

		//���ο� ���(�ݺ������� ������ �ʰ� ����)
		//		people[5] = people[0] + people[1] + people[2] + people[3] + people[4];
		//-------------------------



		//TEST: ���� �ο� + ���ο� ��ü ��� �׽�Ʈ
		//		for(int i=0; i<people.length; i++) {
		//			System.out.println( people[i] );
		//		}



		//--- ������ ��� ---
		for(int i=0; i<expense.length; i++) {
			expense[i] = people[i] * FEE;
		}
		//-------------------



		//TEST: ���� ������ + �Ѱ����� ��ü ��� �׽�Ʈ
		//		for(int i=0; i<expense.length; i++) {
		//			System.out.println( expense[i] );
		//		}



		//--- ���� ��� ---
		System.out.println();
		System.out.println("- - - �� ���� ������ ��� - - -");
		for(int i=0; i<FLOOR; i++) {
			System.out.println(" >> " + (i+1) +"���� ������� " + expense[i] + "�� �Դϴ�");
		}

		System.out.println();
		System.out.println("�� �ο��� " + people[FLOOR] + "�� �Դϴ�");
		System.out.println("�� ������� " + expense[FLOOR] + "�� �Դϴ�");
		//-----------------

	}//main

}//class








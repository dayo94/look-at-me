package array;

import java.util.Scanner;

public class ArrayQuiz {

	public static void main(String[] args) {








		Scanner sc = new Scanner(System.in);

		int[] arr = new int[6];
		int[] arr2 = new int[6];


		for(int i=0; i<arr.length-1; i++) {
			System.out.println((i+1)+"���� ��� �ο���?");
			arr[i] = sc.nextInt();

			arr[5] += arr[i];
		}

		for(int j=0; j<arr2.length-1; j++) {
			arr2[j] = arr[j]*12000;
			System.out.println((j+1) + "���� ������� : " 
					+ arr2[j] +"�� �Դϴ�");
			arr2[5] += arr2[j];

		}


		System.out.println();

		System.out.println("�ǹ��� ��� �� �ο��� : " 
				+ arr[5] + "�� �Դϴ�.");

		System.out.println("�� ������� : " 
				+ arr2[5] + "�� �Դϴ�");













		// ����� ��������

		//�ٲܶ� ���ϴ�










	}//main

}//class

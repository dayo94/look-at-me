package array;

import java.util.Scanner;

public class ArrayQuiz4 {

	public static void main(String[] args) {


		//				 int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};
		//				 �迭�� ����� �� ������ Ǫ�ÿ�


		int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};



		//
		//		 - arr �迭��
		//		  (¦����° �ε��� ������ ��) - (Ȧ����° �ε��� ������ ��)��
		//		  ���Ͻÿ�
		//		  	=> -5


		int result=0;
		int result1=0;


		for(int i=0; i<arr.length; i++) {
			//			if(i!=0) {
			if(i%2==0) {
				result += arr[i];
			} else if (i%2!=0) {
				result1 += arr[i];
				System.out.println(result1);
			}
			//			}

		}

		System.out.println(result-result1);






	}//main

}//class








package array;

import java.util.Scanner;

public class ArrayQuiz5 {

	public static void main(String[] args) {




		//
		//		 - arr �迭�� ���ڵ� �� ���� ���ڰ� 1���� �ǰ��Ͽ�
		//		  rank_arr��� �迭�� ������ �Է��Ͻÿ�
		//		 	=> arr :     { 10, 17, 3, 9, 27, 10, 8, 9, 13, 21 }
		//		     => rank_arr :{  5,  3, 10,7,  1,  5, 9, 7,  4,  2 }
		//




		int[] arr = { 10, 17, 3, 9, 27, 10, 8, 9, 13, 21 };
		//			{  5,  3, 10,7,  1,  5, 9, 7,  4,  2 }

		int[] rank_arr = new int[10];



		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr.length; j++) {
				if(arr[i]<arr[j]) {
					rank_arr[i]++;
				}
			}
		}

		for(int i=0; i<rank_arr.length; i++) {
			System.out.print(rank_arr[i]+1 + ", ");
		}











	}//main

}//class

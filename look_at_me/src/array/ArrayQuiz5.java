package array;

import java.util.Scanner;

public class ArrayQuiz5 {

	public static void main(String[] args) {




		//
		//		 - arr 배열의 숫자들 중 높은 숫자가 1등이 되게하여
		//		  rank_arr라는 배열에 순위를 입력하시오
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

package array;

import java.util.Scanner;

public class ArrayQuiz3 {

	public static void main(String[] args) {


		//				 int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};
		//				 배열이 선언된 뒤 문제를 푸시오


		int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};




		//
		//
		//		 - arr 배열을 invert_arr라는 배열에 거꾸로 입력하시오
		//		 => invert_arr : { 21, 13, 9, 8, 10, 27, 9, 3, 17, 10 }


		for(int i=0; i<arr.length-1; i++) {
			if(arr[i]>0) {
				for(int j=0; j<arr.length-1-i; j++) {
					int tmp = arr[j];
					arr[j] = arr[j+1];
					arr[j+1] = tmp;
				}
			}
		}



		//		for(int i=0; i<arr.length; i++) {
		//			System.out.print(arr[i] + ", ");
		//		}
		//
		//
		//		System.out.println("-------------------");

		int[] invert_arr = new int[arr.length];

		for(int i=0; i<arr.length; i++) {
			invert_arr[i] = arr[i];

			System.out.print(invert_arr[i] + ", ");
		}



	}//main

}//class








package array;

import java.util.Scanner;

public class ArrayQuiz4 {

	public static void main(String[] args) {


		//				 int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};
		//				 배열이 선언된 뒤 문제를 푸시오


		int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};



		//
		//		 - arr 배열의
		//		  (짝수번째 인덱스 내용의 합) - (홀수번째 인덱스 내용의 합)을
		//		  구하시오
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








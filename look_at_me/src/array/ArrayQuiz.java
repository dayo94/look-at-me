package array;

import java.util.Scanner;

public class ArrayQuiz {

	public static void main(String[] args) {








		Scanner sc = new Scanner(System.in);

		int[] arr = new int[6];
		int[] arr2 = new int[6];


		for(int i=0; i<arr.length-1; i++) {
			System.out.println((i+1)+"층에 사는 인원은?");
			arr[i] = sc.nextInt();

			arr[5] += arr[i];
		}

		for(int j=0; j<arr2.length-1; j++) {
			arr2[j] = arr[j]*12000;
			System.out.println((j+1) + "층의 관리비는 : " 
					+ arr2[j] +"원 입니다");
			arr2[5] += arr2[j];

		}


		System.out.println();

		System.out.println("건물에 사는 총 인원은 : " 
				+ arr[5] + "명 입니다.");

		System.out.println("총 관리비는 : " 
				+ arr2[5] + "원 입니다");













		// 상수를 쓰는이유

		//바꿀때 편하다










	}//main

}//class

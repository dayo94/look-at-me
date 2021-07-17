package control;

import java.util.Scanner;

public class star2 {

	public static void main(String[] args) {


		System.out.println("--------피라미드별찍기------------------");

		//		모양
		//       *     
		//      ***      
		//	   *****     
		//	  *******    
		//	 *********   
		//	nnnnnnnnnnn


		Scanner sc = new Scanner(System.in);

		System.out.print("숫자를 입력하세요 : ");
		int num = sc.nextInt();


		for (int i = 0; i < num; i++) {
			for (int j = num-i-1; j > 0; j--) {
				System.out.print(" ");
			}
			for (int j2 = 0; j2 < i*2+1; j2++) {
				System.out.print("*");

			}

			System.out.println();

		}



		System.out.println("------- 역피라미드------------------");


		//	 *********     5   9
		//	  *******      4   7
		//	   *****     
		//      ***      
		//       *     
		
		
		Scanner scc = new Scanner(System.in);

		System.out.print("숫자를 입력하세요 : ");
		int num1 = scc.nextInt();


		for (int i = num1; i > 0; i--) {
			for (int j = 0;	j <num1-i ; j++) {
				System.out.print(" ");
			}
			for (int j= i*2-1; j >0  ; j--) {
				System.out.print("*");
				
			}

			System.out.println();

		}




	}//main

}//class

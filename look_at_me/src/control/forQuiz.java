package control;

import java.util.Scanner;

public class forQuiz {

	public static void main(String[] args) {



		//구구단 중 입력받은 수의 단수를 출력하여라
		//		ex) Input >> 4
		//
		//		    4 x 1 = 4
		//		    4 x 2 = 8
		//		    4 x 3 = 12
		//		    ....


		Scanner sc = new Scanner(System.in);

		System.out.print("2~9 사이의 숫자 하나를 입력하세요 : ");

		int num = sc.nextInt();

		System.out.println();


		for (int i=1; i<10; i++) {
			System.out.println("구구단 " + num + "단 : " 
					+ num + " X " + i 
					+ " = " + num*i );
		}



		//		어떤 수의 약수를 구하는 프로그램을 작성하여라
		//		약수 = 어떤 수를 정수로 나눌 수 있는 수


		Scanner scn = new Scanner(System.in);

		System.out.print("숫자를 입력하세요 : ");
		int input = scn.nextInt();

		for(int i=1; i<input; i++) {
			if(input%i==0) {
				System.out.println(i);
			}
		}



		System.out.println("--------------------------------------------------");


		//flag 사용



		Scanner scnn = new Scanner(System.in);

		System.out.print("숫자를 입력하세요 : ");
		int num0 = scnn.nextInt();


		for(int i=1; i<=num0; i++) {
			boolean flag = false;
			if(num0%i==0) {
				flag = true;

			}


			if(flag) {
				System.out.println(i);
			}

		}



		//		//	- 1에서 1000까지의 정수중에서 4로 나누어도
		//	//	 6으로 나누어도 나머지가 1인 수의 합을 출력하라.
		//	//		> 41916
		//	//
		int result = 0;

		for(int i=-1; i<1001; i++) {
			if (i%4==1 && i%6==1) {
				result += i ;
			}
		}

		System.out.println(result);



		//			- 입력받은 두수의 최소 공배수와 최대 공약수를 구하는
		//	 프로그램을 작성하라.
		//		최소공배수 = 공배수 중에서 가장 작은 정수
		//		최대공약수 = 공약수 중에서 절대치가 가장 큰 수
		//



		Scanner scnnn = new Scanner(System.in);

		System.out.print("Input Number : ");
		int num1 = scnnn.nextInt();
		System.out.print("Input Number : ");
		int num2 = scnnn.nextInt();


		int result1 = 0;    

		for(int i=1; i<=num1; i++) { 
			if(num1%i==0 && num2%i==0) {
				result1 = i;
			}					
		}
		System.out.println("최대공약수 : " + result1);
		System.out.print("최소공배수 : " + (num1*num2)/result1);



		System.out.println("------더좋은코드------");




		Scanner sc1 = new Scanner(System.in);

		System.out.print("Input Number 1 >> ");
		int n1 = sc1.nextInt();
		System.out.print("Input Number 2 >> ");
		int n2 = sc1.nextInt();
		System.out.println();


		//최소 공배수
		//	1. 두 숫자 입력받기
		//	2. 둘 중에 큰 숫자 찾기
		//	3. 큰 숫자를 시작으로 1씩 증가시키며 무한 반복
		//	4. 두 숫자로 나눈 나머지가 0일 때 중단
		//	 -> 최소 공배수 발견

		int lcm = 0; //최소공배수

		int max = n1>n2 ?n1 : n2; //둘 중에 큰 수 저장

		for(int i=max; true; i++) {
			if( i%n1==0 && i%n2==0 ) {
				lcm = i;

				break;
			}
		}

		System.out.println("최소공배수: " + lcm);

		//-------------------------------------------------

		//최대 공약수
		//	1. 두 숫자 입력받기
		//	2. 둘 중에 작은 숫자 구하기
		//	3. 작은 숫자를 시작으로 1씩 감소시키기
		//	4. 두 숫자로 나눈 나머지가 0일 때 중단
		//	 -> 최대 공약수 발견

		int gcd = 0; //최대 공약수

		int min = n1<n2 ?n1 :n2;

		for( int i=min; i>=1; i-- ) {
			if( n1%i==0 && n2%i==0 ) {
				gcd = i;

				break;
			}
		}

		System.out.println("최대공약수: " + gcd);














	}//main

}//class

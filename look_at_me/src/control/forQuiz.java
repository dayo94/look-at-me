package control;

import java.util.Scanner;

public class forQuiz {

	public static void main(String[] args) {



		//������ �� �Է¹��� ���� �ܼ��� ����Ͽ���
		//		ex) Input >> 4
		//
		//		    4 x 1 = 4
		//		    4 x 2 = 8
		//		    4 x 3 = 12
		//		    ....


		Scanner sc = new Scanner(System.in);

		System.out.print("2~9 ������ ���� �ϳ��� �Է��ϼ��� : ");

		int num = sc.nextInt();

		System.out.println();


		for (int i=1; i<10; i++) {
			System.out.println("������ " + num + "�� : " 
					+ num + " X " + i 
					+ " = " + num*i );
		}



		//		� ���� ����� ���ϴ� ���α׷��� �ۼ��Ͽ���
		//		��� = � ���� ������ ���� �� �ִ� ��


		Scanner scn = new Scanner(System.in);

		System.out.print("���ڸ� �Է��ϼ��� : ");
		int input = scn.nextInt();

		for(int i=1; i<input; i++) {
			if(input%i==0) {
				System.out.println(i);
			}
		}



		System.out.println("--------------------------------------------------");


		//flag ���



		Scanner scnn = new Scanner(System.in);

		System.out.print("���ڸ� �Է��ϼ��� : ");
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



		//		//	- 1���� 1000������ �����߿��� 4�� �����
		//	//	 6���� ����� �������� 1�� ���� ���� ����϶�.
		//	//		> 41916
		//	//
		int result = 0;

		for(int i=-1; i<1001; i++) {
			if (i%4==1 && i%6==1) {
				result += i ;
			}
		}

		System.out.println(result);



		//			- �Է¹��� �μ��� �ּ� ������� �ִ� ������� ���ϴ�
		//	 ���α׷��� �ۼ��϶�.
		//		�ּҰ���� = ����� �߿��� ���� ���� ����
		//		�ִ����� = ����� �߿��� ����ġ�� ���� ū ��
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
		System.out.println("�ִ����� : " + result1);
		System.out.print("�ּҰ���� : " + (num1*num2)/result1);



		System.out.println("------�������ڵ�------");




		Scanner sc1 = new Scanner(System.in);

		System.out.print("Input Number 1 >> ");
		int n1 = sc1.nextInt();
		System.out.print("Input Number 2 >> ");
		int n2 = sc1.nextInt();
		System.out.println();


		//�ּ� �����
		//	1. �� ���� �Է¹ޱ�
		//	2. �� �߿� ū ���� ã��
		//	3. ū ���ڸ� �������� 1�� ������Ű�� ���� �ݺ�
		//	4. �� ���ڷ� ���� �������� 0�� �� �ߴ�
		//	 -> �ּ� ����� �߰�

		int lcm = 0; //�ּҰ����

		int max = n1>n2 ?n1 : n2; //�� �߿� ū �� ����

		for(int i=max; true; i++) {
			if( i%n1==0 && i%n2==0 ) {
				lcm = i;

				break;
			}
		}

		System.out.println("�ּҰ����: " + lcm);

		//-------------------------------------------------

		//�ִ� �����
		//	1. �� ���� �Է¹ޱ�
		//	2. �� �߿� ���� ���� ���ϱ�
		//	3. ���� ���ڸ� �������� 1�� ���ҽ�Ű��
		//	4. �� ���ڷ� ���� �������� 0�� �� �ߴ�
		//	 -> �ִ� ����� �߰�

		int gcd = 0; //�ִ� �����

		int min = n1<n2 ?n1 :n2;

		for( int i=min; i>=1; i-- ) {
			if( n1%i==0 && n2%i==0 ) {
				gcd = i;

				break;
			}
		}

		System.out.println("�ִ�����: " + gcd);














	}//main

}//class

package control;

public class star {

	public static void main(String[] args) {


		System.out.println("--------1------------------");



		for(int i=0; i<5; i++ ) {
			System.out.print('*');
		}

		System.out.println();

		System.out.println("---------2-----------------");




		for(int i=0; i<5; i++ ) {
			System.out.println('*');
		}



		System.out.println("----------3----------------");





		for(int i=0; i<5; i++ ) {
			for(int j=0; j<5; j++) {
				System.out.print('*');

			}
			System.out.println('*');
		}





		System.out.println("-----------4---------------");


		//�̷��� �� �ʿ� ����
		// i=0; i<5; �ؼ� ����Ʈ�� i+1



		for(int i=1; i<6; i++ ) {

			for(int j=1; j<6; j++) {

				System.out.print(i);
			}
			System.out.println();
		}





		System.out.println("------------5--------------");

		//i�� �� j�� ��


		for(int i=1; i<6; i++ ) {

			for(int j=1; j<6; j++) {

				System.out.print(j);  
			}
			System.out.println();
		}


		System.out.println("------------6--------------");



		for(int i=0; i<5; i++ ) {

			for(int j=1; j<6; j++) {

				System.out.print(j+i);  //i+1 +j

			}
			System.out.println();


		}


		System.out.println("-------------7-------------");

		//i--�� �ٽ� �غ���

		//i++�� �ϰ� 5-i

		for(int i=0; i<5; i++ ) {

			for(int j=5; j<10; j++) {

				System.out.print(j-i);  

			}
			System.out.println();


		}











		System.out.println("--------------8------------");



		for(int i=0; i<5; i++) {

			for(int j=0; j<i+1; j++) {
				System.out.print('*');

			}
			System.out.println();
		}


		System.out.println("--------------9------------");



		for(int i=0; i<5; i++) {

			for(int j=0; j<5-i; j++) {
				System.out.print('*');

			}
			System.out.println();
		}



		System.out.println("--------------10------------");



		for(int i=0; i<5; i++) {
			for(int j=0; j<i; j++) {
				System.out.print(" ");
			}


			for(int d=0; d<5-i; d++) {
				System.out.print('*');

			}

			System.out.println();
		}












		System.out.println("--------------11------------");




		

		for(int i=1; i<6; i++) {
			for(int j=0; j<5-i; j++) {
				System.out.print(" ");
			}


			for(int d=0; d<i; d++) {
				System.out.print('*');

			}

			System.out.println();
		}




		System.out.println("--------------12------------");





		for(int i=0; i<9; i++) {
			if (i<5) {
				for(int j=0; j<i+1; j++) {
					System.out.print("*");
				}
				System.out.println();
			} else if (i>=5){
				for (int j=4; j>i-5; j--) {

					System.out.print("*");
				}

				System.out.println();

			}

		}


		System.out.println("--------------12����û�ڵ�------------");









		for(int i=0; i<5; i++) {
			for(int j=0; j<i+1; j++) {
				System.out.print("*");

			}
			for(int j=0; j<4; j++ ) {
				System.out.print(" ");

			}

			System.out.println();

		}



		for(int i=0; i<4; i++) {
			for(int j=0; j<4-i; j++) {
				System.out.print("*");
			}

			for(int j=0; j<i+1; j++) {

				System.out.print(" ");
			}

			System.out.println();

		}








		System.out.println("--------------13------------");


		
		
		for (int i=0; i<9; i++) {
			if (i<5) {
				for (int j=0; j<5-i; j++) {
					System.out.print("*");
				}
				System.out.println();
			} else if (i>=5) {
				for (int j=0; j<i-3; j++) {
					System.out.print("*");
				}
				System.out.println();
			}
		}





		System.out.println("--------------------------------------");
		
		
		
		
		
		


		for(int i=0; i<9; i++) {
			if(i<5) {
				for(int j=0; j<i; j++) {
					System.out.print(" ");
				}


				for(int d=0; d<5-i; d++) {
					System.out.print('*');


				}
					System.out.println();
			}
			else if(i>=5) {
					for(int j=0; j<8-i; j++) {
						System.out.print(" ");
					}
					
					
					for(int d=0; d<i-3; d++) {
						System.out.print('*');
						
					}
					
					System.out.println();
				}
				
			}
		System.out.println("-------------------------------");

		
		
		
	}//main


}//class




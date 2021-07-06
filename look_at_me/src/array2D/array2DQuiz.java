package array2D;

public class array2DQuiz {

	public static void main(String[] args) {


		//		1	2	3	4	5	
		//		6	7	8	9	10	
		//		11	12	13	14	15	
		//		16	17	18	19	20	
		//		21	22	23	24	25	




		int[][] arr = new int[5][5];

		int k = 1;


		//입력 (여기 고쳐서 해결할 것!)
		for (int i = 0; i < arr.length; i++) { //i행, 0~4
			for (int j = 0; j < arr[i].length; j++) { //j열, 0~4

				arr[i][j] = k++;

			}
		}


		//출력 (그대로 둘 것!)
		for (int i = 0; i < arr.length; i++) { //i행
			for (int j = 0; j < arr[i].length; j++) { //j열
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}



	}//main

}//class
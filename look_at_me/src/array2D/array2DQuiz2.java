package array2D;

public class array2DQuiz2 {



	public static void main(String[] args) {


		//			5	4	3	2	1	
		//			10	9	8	7	6	
		//			15	14	13	12	11	
		//			20	19	18	17	16	
		//			25	24	23	22	21	




		int[][] arr = new int[5][5];

		int k = 1;


		//입력 (여기 고쳐서 해결할 것!)
		for (int i = 0; i < arr.length; i++) { //i행, 0~4
			for (int j = arr[i].length-1; j >=0; j--) { //j열, 0~4

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

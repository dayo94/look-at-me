package array2D;

public class array2DQuiz3 {

	public static void main(String[] args) {


		
		
//		1	6	11	16	21	
//		2	7	12	17	22	
//		3	8	13	18	23	
//		4	9	14	19	24	
//		5	10	15	20	25	

		
		

		int[][] arr = new int[5][5];

		int k = 1;


		//입력 (여기 고쳐서 해결할 것!)
		for (int i = 0; i < arr.length; i++) { //i행, 0~4
		for (int j = 0; j < arr[i].length; j++) { //j열, 0~4

				arr[j][i] = k++;

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
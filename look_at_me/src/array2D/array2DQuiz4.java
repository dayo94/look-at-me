package array2D;

public class array2DQuiz4 {

	public static void main(String[] args) {

		//		5	10	15	20	25	
		//		4	9	14	19	24	
		//		3	8	13	18	23	
		//		2	7	12	17	22	
		//		1	6	11	16	21	





		int[][] arr = new int[5][5];

		int k = 1;


		//�Է� (���� ���ļ� �ذ��� ��!)
		for (int i = 0; i < arr.length; i++) { //i��, 0~4
			for (int j =arr[i].length-1; j>=0; j--) { //j��, 0~4

				arr[j][i] = k++;

			}
		}


		//��� (�״�� �� ��!)
		for (int i = 0; i < arr.length; i++) { //i��
			for (int j = 0; j < arr[i].length; j++) { //j��
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}



	}//main

}//class

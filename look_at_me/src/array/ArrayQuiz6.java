package array;

public class ArrayQuiz6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub




		//		 int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};
		//		 �迭�� ����� �� ������ Ǫ�ÿ�


		//		int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};





		//
		//		 - arr �迭�� ��ҵ� �� �ߺ��� ���� over_arr�� �ְ� �ߺ�����
		//		  ���� ���� ret_arr�� �Է��Ͻÿ�
		//		 	** over_arr, ret_arr�� ���̰� 10�� �迭�� �ۼ��Ѵ�
		//		 	
		//		 	����Ѵٸ� (���ĵ� �� �� ������ �ص� ��)
		//		 	=> over_arr : 9, 10
		//		 	=> ret_arr : 3, 8, 13, 17, 21, 27


		int[] arr = {10, 17, 3, 9, 27, 10, 8, 9, 13, 21};

		int[] over_arr = new int[arr.length]; //�ߺ��� �迭
		int[] ret_arr = new int[arr.length]; // �ߺ��� �ƴ� �� �迭

		int overCnt = 0; //�ߺ����� ����
		int retCnt = 0; //�ߺ��� �ƴ� ���� ����


		for(int i=0; i<arr.length; i++) {
			boolean isOverlap = false; //�ߺ����̸� true

			//�̹� �ߺ������� �Ǻ��� �������� Ȯ��

			for(int j=0; j<over_arr.length; j++) {
				if(arr[i] == over_arr[j]) {
					isOverlap = true;
					break;
				}
			}

			if( isOverlap ) {
				continue;

			} else {

				//���غ��� ���� �ε���(������ ������ ��ҵ�)
				//�ߺ����� �ִ��� Ȯ���Ѵ�
				for(int j=i+1; j<arr.length; j++) {
					if(arr[i] == arr[j]) {
						isOverlap = true; // �ߺ��� �߰�
						break;
					}
				}

			}

			//����ó��
			if(isOverlap) {
				over_arr[overCnt++] = arr[i];
			} else {
				ret_arr[retCnt++]  = arr[i];
			}


		}






		//API�� �̿��� ����
		//		Arrays.sort(over_arr);
		//		Arrays.sort(ret_arr);



		//---��������---

		for(int i=0; i<over_arr.length-1; i++) {
			for(int j=0; j<over_arr.length-1-i; j++) {

				//0�� �������� ����
				if(over_arr[j]>over_arr[j+1] && over_arr[j+1] != 0 ) {
					int tmp = over_arr[j];
					over_arr[j] = over_arr[j+1];
					over_arr[j+1] = tmp;

				}







			}
		}

		for(int i=0; i<ret_arr.length-1; i++) {
			for(int j=0; j<ret_arr.length-1-i; j++) {

				//0�� �������� ����
				if(ret_arr[j]>ret_arr[j+1] && ret_arr[j+1] != 0 ) {
					int tmp = ret_arr[j];
					ret_arr[j] = ret_arr[j+1];
					ret_arr[j+1] = tmp;

				}







			}
		}


		//--------------







		System.out.println("over_arr : ");
		for(int i=0; i<over_arr.length; i++) {
			//for(int i=0; i<overCnt; i++)
			System.out.print(over_arr[i] + ", ");
		}

		System.out.println();

		System.out.println("ret_arr : ");
		for(int i=0; i<ret_arr.length; i++) {
			//		for(int i=0; i<retCnt; i++) 
			System.out.print(ret_arr[i] + ", ");
		}












	}//main

}//class

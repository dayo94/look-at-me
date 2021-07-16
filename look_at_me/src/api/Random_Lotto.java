package api;

import java.util.Arrays;
import java.util.Random;


public class Random_Lotto {

	public static void main(String[] args) {

		
		//���� ����(1~45) 6�� ����
		//	-> �ߺ��������� ����
		
		
		Random ran = new Random();
		
		int[] arr = new int[6];
		
		
		//��ü 6�� ���� �� ���ϱ�
		for(int i=0; i<arr.length; i++) {
			int num = ran.nextInt(45) + 1; //1~45
			
			//�ߺ��Ǵ� ������ üũ�ϱ�
			boolean isExists = false; //�ߺ���flag, false: �ߺ����� true: �ߺ�����

			//�̹� ������ ���� �߿��� �����ϴ��� �˻�
			for(int j=0; j<i; j++) {
				if(arr[j] == num) { //�ߺ��Ǵ� ���� ���
					isExists = true;
					
					break; //�ߺ��˻� �ߴ�
				}
			}
			
			if(isExists) { //�ߺ��Ǵ� ���� ���
				i--; //�ݺ�Ƚ�� �ѹ� �߰�
				continue;
			}
			
			//������ �迭�� �����ϱ�
			arr[i] = num;
		}
		
		Arrays.sort(arr); //����
		System.out.println( Arrays.toString(arr) );
		
		
		
	}//main

}//class

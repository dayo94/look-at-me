package class06;

import java.util.Arrays;

public class Method_03 {


	public void primitiveTest( int num ) {
		num = 900;
		System.out.println("�޼ҵ�: " + num);
	}
	
	//�Ű������� �迭���� (������)
	
	public void arrayTest(int[] arr) {
		arr[2] = 99999;
		System.out.println("�޼ҵ�: " + Arrays.toString(arr));
	}
	
	
	
	
	
}//class

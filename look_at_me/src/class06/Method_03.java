package class06;

import java.util.Arrays;

public class Method_03 {


	public void primitiveTest( int num ) {
		num = 900;
		System.out.println("메소드: " + num);
	}
	
	//매개변수가 배열변수 (참조형)
	
	public void arrayTest(int[] arr) {
		arr[2] = 99999;
		System.out.println("메소드: " + Arrays.toString(arr));
	}
	
	
	
	
	
}//class

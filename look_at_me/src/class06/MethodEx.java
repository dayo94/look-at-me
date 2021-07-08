package class06;

import java.util.Arrays;

public class MethodEx {

	public static void main(String[] args) {

		
		System.out.println("-------------method_01-------------------");
		
		Method_01 m01 = new Method_01(); //객체 생성
		
		int result = m01.add( 11, 22 );
		
		
		
	
		
		System.out.println("덧셈의 결과 : " +result);
		
		//메소드 호출의 return값을 곧바로 출력에 사용하기
		System.out.println("덧셈의 결과 : " + m01.add( 111, 222 ));
		
		
		
		
		System.out.println("-------------method_02-------------------");

		Method_02 m02 = new Method_02();
		
		m02.method1();
		
		m02.method2(12);

		System.out.println("반환된 값 : " + m02.returnNum());
		
		m02.plus(519, 212);
		
		System.out.println("덧셈 결과 : " + m02.plus(519, 212));
		
		//ctrl+z 돌리기는 ctrl+y
		//ctrl+x 잘라내기
		
		
		System.out.println("-------------method_03-------------------");
		
		Method_03 m03 = new Method_03();
		
		System.out.println("---기본형 전달 테스트---");
		int num = 888;
		
		System.out.println("호출전: " + num);
		
		m03.primitiveTest(num); //값에 의한 호출 call by Value
		
		
		System.out.println("호출후: " + num);
		
		
		
		System.out.println("---참조형 전달 테스트---");
		
		int[] arr = new int[5];
		arr[2] = 100;
		
		System.out.println("호출전: " + Arrays.toString(arr));
		
		m03.arrayTest(arr); //참조에 의한 호출 call by reference
		
		System.out.println("호출후: " + Arrays.toString(arr));
		
		
		
		System.out.println("-------------method_04-------------------");
		
		
		
		Method_04 m04 = new Method_04();
		
		m04.returnTest();
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class

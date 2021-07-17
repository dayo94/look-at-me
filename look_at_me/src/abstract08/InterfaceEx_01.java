package abstract08;


abstract class TestClass {
	int num; //멤버필드, 인스턴스 변수
	
	private void method() {//멤버메소드, 일반메소드
		
	}
	
	public abstract void method1();//멤버메소드, 추상메소드
	public abstract void method2();//멤버메소드, 추상메소드
	
	
	
}//TestClass class


//--------------------------------------------------------

interface TestInterface { //인터페이스
	//상수필드, 추상메소드만 멤버로 가질 수 있다
	
//--------------------------------------------------------
	
	//상수 필드
	// -> public static final 키워드를 붙인 필드만 선언 가능하다
	
	public static final int NUM1 = 123; //선언과 동시에 초기화 필수! 
	
	int NUM2 = 345;
	
	//public static final int 키워드를 생략하고
	//필드를 선언해도 자동으로 생성


	//인터페이스에서는 필드는 public static final int를
	//붙여주는것이좋다

	
	//인터페이스는 일반 메소드를 멤버로 가질수없다
	
//	public void method() {
//		
//	}
	
	
	public abstract void out();
	
	
	public void display(); // 추상 메소드 abstract 생략가능
	
	
	
	
}

//--------------------------------------------------------


//추상클래스 상속

class Test extends TestClass {

	@Override
	public void method1() {
		
	}

	@Override
	public void method2() {
		
	}
	
	
	
	
	
	
	
}//Test class


//--------------------------------------------------------

//인터페이스 구현하기(상속받기)

class Test2 implements TestInterface {

	
	
	@Override
	public void out() {
		
	}

	@Override
	public void display() {
		
	}
	
	
	
}//Test2 class

//상속먼저 그다음 인터페이스

class Test3 extends TestClass implements TestInterface {

	//TestInterface의 멤버 메소드(interface implements)
	
	@Override
	public void out() {
		
	}

	@Override
	public void display() {
		
	}

	
	//TestClass의 멤버 메소드(extends)
	
	@Override
	public void method1() {
		
	}

	@Override
	public void method2() {
		
	}
	
	
}























//--------------------------------------------------------
public class InterfaceEx_01 {

	public static void main(String[] args) {

		
		//인터페이스의 상수 필드
		System.out.println(TestInterface.NUM1);
		System.out.println(TestInterface.NUM2);
		
		//인터페이스를 상속받은 클래스의 상수 필드
		System.out.println(Test3.NUM1);
		System.out.println(Test3.NUM2);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class

//--------------------------------------------------------
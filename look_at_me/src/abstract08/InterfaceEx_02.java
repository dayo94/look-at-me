package abstract08;

public class InterfaceEx_02 {

	public static void main(String[] args) {


		Child c = new Child();
		
		c.out();
		
		
		System.out.println("------------------");
		
		Parent p; //부모타입 객체 변수
		p = new Child(); //부모타입 <- 자식타입
		
		p.out();//자식 인스턴스 메소드 호출(동적바인딩)
		
		
		System.out.println("------------------");

		//** extends한 클래스는 부모타입이다
		//** implements한 인터페이스는 부모 타입니다
		
		
		Inter_01 i01; //인터페이스 객체변수
		
		i01= new Child();
		
		i01.out(); //동적바인딩
		
		System.out.println("------------------");

		Inter_02 i02 = new Child(); //인터페이스 객체변수
		
		i02.out(); //동적바인딩
		
		
		

	}//main

}//class



//** 자바는 다중 상속을 금지하고있다
// -> extends키워드로 한개의 클래스만 상속받을수있다

//class P1 {
//	public void display() {
//		System.out.println("P1");
//	}
//}
//class P2 {
//	public void display() {
//		System.out.println("P2");
//	}
//}
//
//
//class Children extends P1, P2 {
//	
//}


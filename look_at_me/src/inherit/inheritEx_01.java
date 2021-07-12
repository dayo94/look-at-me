package inherit;

class Parent {
	String name;
	int num;
	
	public void display() {
		System.out.println("부모 클래스의 메소드");
	}
	
	
	
	
}//parent class



class Child extends Parent{
	int score;
	
	public void print() {
		System.out.println("자식 클래스의 메소든");
	}
	
	@Override
	public void display() {
		System.out.println("오버라이딩 메소드");
		
	}
	
	//** 오버라이딩, overriding
	// 메소드 재정의
	// 상속받은 메소드의 기능을 재정의하는것
	// ->부모클래스의 메소드와 리턴타입, 이름, 매개변수 형식이 같아야만 한다
	
	//** 어노테이션, Annotation 
	
	//	코드의 부가적인 의미를 부여할 때 사용한다
	//	특정 동작이나 문법은 코드에 간단히 적용시킬 수 있다
	// @Override, @Deprecate, @Target, @Controller, @Service, ...
	
	//@Override 어노테이션
	//	오버라이딩 규칙이 잘 지켜졌는지 유효성검사를 한다
	//	상속받은 메소드에 적용하여 사용한다
	//	오버라이딩 문법에 맞지 않으면 에러가 발생한다
	
	
	
	
}//child class











public class inheritEx_01 {
	public static void main(String[] args) {

		
		Parent p = new Parent();
		p.name = "이다영";
		p.num = 123;
		
		p.display();
		
		System.out.println("-------------------------------");
		
		Child c = new Child();
		
		c.name = "Bob";//상속
		c.num = 455;//상속
		c.score = 777;
		
		c.display();//상속
		c.print();
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}//main

}//class
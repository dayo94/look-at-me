package inherit;

class Parent5 {
	public void display() {
		System.out.println("부모클래스");
	}

	public Parent5() {

	}



}//Parent class


final class Child5 extends Parent5 {


	@Override
	public final void display() {
		System.out.println("자식 클래스 오버라이딩");
	}


	public Child5() {
	
	}
	






}//Child class


//class GrandChild extends Child5 {

//	
//	@Override
//	public void display() {
//		System.out.println("2번 재정의된 메소드");
//	}
//	


//}//GrandChild class






class inheritEx_05 {
	public static void main(String[] args) {

		Parent5 p = new Parent5();

		System.out.println("----------------------");

		Child5 c = new Child5();


		//		GrandChild gc = new GrandChild();
		//		gc.display();








	}//main

}//class
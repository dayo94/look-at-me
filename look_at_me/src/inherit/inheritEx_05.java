package inherit;

class Parent5 {
	public void display() {
		System.out.println("�θ�Ŭ����");
	}

	public Parent5() {

	}



}//Parent class


final class Child5 extends Parent5 {


	@Override
	public final void display() {
		System.out.println("�ڽ� Ŭ���� �������̵�");
	}


	public Child5() {
	
	}
	






}//Child class


//class GrandChild extends Child5 {

//	
//	@Override
//	public void display() {
//		System.out.println("2�� �����ǵ� �޼ҵ�");
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